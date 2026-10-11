/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javax.annotation.Nullable
 */
package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.Ordering;
import com.google.common.util.concurrent.AbstractCheckedFuture;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.CheckedFuture;
import com.google.common.util.concurrent.ExecutionError;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.JdkFutureAdapters;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.UncheckedExecutionException;
import com.google.common.util.concurrent.UninterruptibleFuture;
import com.google.common.util.concurrent.Uninterruptibles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.UndeclaredThrowableException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.Nullable;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public final class Futures {
    private static final Ordering<Constructor<?>> WITH_STRING_PARAM_FIRST = Ordering.natural().onResultOf(new Function<Constructor<?>, Boolean>(){

        @Override
        public Boolean apply(Constructor<?> input) {
            return Arrays.asList(input.getParameterTypes()).contains(String.class);
        }
    }).reverse();

    private Futures() {
    }

    @Deprecated
    public static <V> UninterruptibleFuture<V> makeUninterruptible(final Future<V> future) {
        Preconditions.checkNotNull(future);
        if (future instanceof UninterruptibleFuture) {
            return (UninterruptibleFuture)future;
        }
        return new UninterruptibleFuture<V>(){

            @Override
            public boolean cancel(boolean mayInterruptIfRunning) {
                return future.cancel(mayInterruptIfRunning);
            }

            @Override
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override
            public boolean isDone() {
                return future.isDone();
            }

            @Override
            public V get(long timeout, TimeUnit unit) throws TimeoutException, ExecutionException {
                return Uninterruptibles.getUninterruptibly(future, timeout, unit);
            }

            @Override
            public V get() throws ExecutionException {
                return Uninterruptibles.getUninterruptibly(future);
            }
        };
    }

    @Deprecated
    public static <V> ListenableFuture<V> makeListenable(Future<V> future) {
        return JdkFutureAdapters.listenInPoolThread(future);
    }

    @Deprecated
    public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(Future<V> future, Function<Exception, X> mapper) {
        return new MappingCheckedFuture<V, X>(Futures.makeListenable(future), mapper);
    }

    public static <V, X extends Exception> CheckedFuture<V, X> makeChecked(ListenableFuture<V> future, Function<Exception, X> mapper) {
        return new MappingCheckedFuture<V, X>(Preconditions.checkNotNull(future), mapper);
    }

    public static <V> ListenableFuture<V> immediateFuture(@Nullable V value) {
        SettableFuture<V> future = SettableFuture.create();
        future.set(value);
        return future;
    }

    public static <V, X extends Exception> CheckedFuture<V, X> immediateCheckedFuture(@Nullable V value) {
        SettableFuture<V> future = SettableFuture.create();
        future.set(value);
        return Futures.makeChecked(future, new Function<Exception, X>(){

            @Override
            public X apply(Exception e) {
                throw new AssertionError((Object)"impossible");
            }
        });
    }

    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable throwable) {
        Preconditions.checkNotNull(throwable);
        SettableFuture future = SettableFuture.create();
        future.setException(throwable);
        return future;
    }

    public static <V, X extends Exception> CheckedFuture<V, X> immediateFailedCheckedFuture(final X exception) {
        Preconditions.checkNotNull(exception);
        return Futures.makeChecked(Futures.immediateFailedFuture(exception), new Function<Exception, X>(){

            @Override
            public X apply(Exception e) {
                return exception;
            }
        });
    }

    public static <I, O> ListenableFuture<O> chain(ListenableFuture<I> input, Function<? super I, ? extends ListenableFuture<? extends O>> function) {
        return Futures.chain(input, function, MoreExecutors.sameThreadExecutor());
    }

    public static <I, O> ListenableFuture<O> chain(ListenableFuture<I> input, Function<? super I, ? extends ListenableFuture<? extends O>> function, Executor exec) {
        ChainingListenableFuture chain = new ChainingListenableFuture(function, input);
        input.addListener(chain, exec);
        return chain;
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> future, Function<? super I, ? extends O> function) {
        return Futures.transform(future, function, MoreExecutors.sameThreadExecutor());
    }

    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> future, final Function<? super I, ? extends O> function, Executor exec) {
        Preconditions.checkNotNull(function);
        Function wrapperFunction = new Function<I, ListenableFuture<O>>(){

            @Override
            public ListenableFuture<O> apply(I input) {
                Object output = function.apply(input);
                return Futures.immediateFuture(output);
            }
        };
        return Futures.chain(future, wrapperFunction, exec);
    }

    @Beta
    public static <I, O> Future<O> lazyTransform(final Future<I> future, final Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new Future<O>(){

            @Override
            public boolean cancel(boolean mayInterruptIfRunning) {
                return future.cancel(mayInterruptIfRunning);
            }

            @Override
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override
            public boolean isDone() {
                return future.isDone();
            }

            @Override
            public O get() throws InterruptedException, ExecutionException {
                return this.applyTransformation(future.get());
            }

            @Override
            public O get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
                return this.applyTransformation(future.get(timeout, unit));
            }

            private O applyTransformation(I input) throws ExecutionException {
                try {
                    return function.apply(input);
                }
                catch (Throwable t) {
                    throw new ExecutionException(t);
                }
            }
        };
    }

    @Deprecated
    public static <I, O> Future<O> transform(final Future<I> future, final Function<? super I, ? extends O> function) {
        if (future instanceof ListenableFuture) {
            return Futures.transform((ListenableFuture)future, function);
        }
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new Future<O>(){
            private final Object lock = new Object();
            private boolean set = false;
            private O value = null;
            private ExecutionException exception = null;

            @Override
            public O get() throws InterruptedException, ExecutionException {
                return this.apply(future.get());
            }

            @Override
            public O get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
                return this.apply(future.get(timeout, unit));
            }

            /*
             * WARNING - Removed try catching itself - possible behaviour change.
             */
            private O apply(I raw) throws ExecutionException {
                Object object = this.lock;
                synchronized (object) {
                    if (!this.set) {
                        try {
                            this.value = function.apply(raw);
                        }
                        catch (RuntimeException e) {
                            this.exception = new ExecutionException(e);
                        }
                        catch (Error e) {
                            this.exception = new ExecutionException(e);
                        }
                        this.set = true;
                    }
                    if (this.exception != null) {
                        throw this.exception;
                    }
                    return this.value;
                }
            }

            @Override
            public boolean cancel(boolean mayInterruptIfRunning) {
                return future.cancel(mayInterruptIfRunning);
            }

            @Override
            public boolean isCancelled() {
                return future.isCancelled();
            }

            @Override
            public boolean isDone() {
                return future.isDone();
            }
        };
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V> ... futures) {
        return new ListFuture<V>(ImmutableList.copyOf(futures), true, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> futures) {
        return new ListFuture(ImmutableList.copyOf(futures), true, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V> ... futures) {
        return new ListFuture<V>(ImmutableList.copyOf(futures), false, MoreExecutors.sameThreadExecutor());
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> futures) {
        return new ListFuture(ImmutableList.copyOf(futures), false, MoreExecutors.sameThreadExecutor());
    }

    public static <V> void addCallback(ListenableFuture<V> future, FutureCallback<? super V> callback) {
        Futures.addCallback(future, callback, MoreExecutors.sameThreadExecutor());
    }

    public static <V> void addCallback(final ListenableFuture<V> future, final FutureCallback<? super V> callback, Executor executor) {
        Preconditions.checkNotNull(callback);
        Runnable callbackListener = new Runnable(){

            public void run() {
                try {
                    Object value = Uninterruptibles.getUninterruptibly(future);
                    callback.onSuccess(value);
                }
                catch (ExecutionException e) {
                    callback.onFailure(e.getCause());
                }
                catch (RuntimeException e) {
                    callback.onFailure(e);
                }
                catch (Error e) {
                    callback.onFailure(e);
                }
            }
        };
        future.addListener(callbackListener, executor);
    }

    @Beta
    public static <V, X extends Exception> V get(Future<V> future, Class<X> exceptionClass) throws X {
        Preconditions.checkNotNull(future);
        Preconditions.checkArgument(!RuntimeException.class.isAssignableFrom(exceptionClass), "Futures.get exception type (%s) must not be a RuntimeException", exceptionClass);
        try {
            return future.get();
        }
        catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw Futures.newWithCause(exceptionClass, e);
        }
        catch (ExecutionException e) {
            Futures.wrapAndThrowExceptionOrError(e.getCause(), exceptionClass);
            throw new AssertionError();
        }
    }

    @Beta
    public static <V, X extends Exception> V get(Future<V> future, long timeout, TimeUnit unit, Class<X> exceptionClass) throws X {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(unit);
        Preconditions.checkArgument(!RuntimeException.class.isAssignableFrom(exceptionClass), "Futures.get exception type (%s) must not be a RuntimeException", exceptionClass);
        try {
            return future.get(timeout, unit);
        }
        catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw Futures.newWithCause(exceptionClass, e);
        }
        catch (TimeoutException e) {
            throw Futures.newWithCause(exceptionClass, e);
        }
        catch (ExecutionException e) {
            Futures.wrapAndThrowExceptionOrError(e.getCause(), exceptionClass);
            throw new AssertionError();
        }
    }

    private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable cause, Class<X> exceptionClass) throws X {
        if (cause instanceof Error) {
            throw new ExecutionError((Error)cause);
        }
        if (cause instanceof RuntimeException) {
            throw new UncheckedExecutionException(cause);
        }
        throw Futures.newWithCause(exceptionClass, cause);
    }

    @Beta
    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return Uninterruptibles.getUninterruptibly(future);
        }
        catch (ExecutionException e) {
            Futures.wrapAndThrowUnchecked(e.getCause());
            throw new AssertionError();
        }
    }

    private static void wrapAndThrowUnchecked(Throwable cause) {
        if (cause instanceof Error) {
            throw new ExecutionError((Error)cause);
        }
        throw new UncheckedExecutionException(cause);
    }

    private static <X extends Exception> X newWithCause(Class<X> exceptionClass, Throwable cause) {
        List<Constructor<X>> constructors = Arrays.asList(exceptionClass.getConstructors());
        for (Constructor<X> constructor : Futures.preferringStrings(constructors)) {
            Exception instance = (Exception)Futures.newFromConstructor(constructor, cause);
            if (instance == null) continue;
            if (instance.getCause() == null) {
                instance.initCause(cause);
            }
            return (X)instance;
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + exceptionClass + " in response to chained exception", cause);
    }

    private static <X extends Exception> List<Constructor<X>> preferringStrings(List<Constructor<X>> constructors) {
        return WITH_STRING_PARAM_FIRST.sortedCopy(constructors);
    }

    @Nullable
    private static <X> X newFromConstructor(Constructor<X> constructor, Throwable cause) {
        Class<?>[] paramTypes = constructor.getParameterTypes();
        Object[] params = new Object[paramTypes.length];
        for (int i = 0; i < paramTypes.length; ++i) {
            Class<?> paramType = paramTypes[i];
            if (paramType.equals(String.class)) {
                params[i] = cause.toString();
                continue;
            }
            if (paramType.equals(Throwable.class)) {
                params[i] = cause;
                continue;
            }
            return null;
        }
        try {
            return constructor.newInstance(params);
        }
        catch (IllegalArgumentException e) {
            return null;
        }
        catch (InstantiationException e) {
            return null;
        }
        catch (IllegalAccessException e) {
            return null;
        }
        catch (InvocationTargetException e) {
            return null;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ChainingListenableFuture<I, O>
    extends AbstractFuture<O>
    implements Runnable {
        private Function<? super I, ? extends ListenableFuture<? extends O>> function;
        private ListenableFuture<? extends I> inputFuture;
        private volatile ListenableFuture<? extends O> outputFuture;
        private final BlockingQueue<Boolean> mayInterruptIfRunningChannel = new LinkedBlockingQueue<Boolean>(1);
        private final CountDownLatch outputCreated = new CountDownLatch(1);

        private ChainingListenableFuture(Function<? super I, ? extends ListenableFuture<? extends O>> function, ListenableFuture<? extends I> inputFuture) {
            this.function = Preconditions.checkNotNull(function);
            this.inputFuture = Preconditions.checkNotNull(inputFuture);
        }

        @Override
        public O get() throws InterruptedException, ExecutionException {
            if (!this.isDone()) {
                ListenableFuture<I> inputFuture = this.inputFuture;
                if (inputFuture != null) {
                    inputFuture.get();
                }
                this.outputCreated.await();
                ListenableFuture<O> outputFuture = this.outputFuture;
                if (outputFuture != null) {
                    outputFuture.get();
                }
            }
            return (O)super.get();
        }

        @Override
        public O get(long timeout, TimeUnit unit) throws TimeoutException, ExecutionException, InterruptedException {
            if (!this.isDone()) {
                long start;
                ListenableFuture<I> inputFuture;
                if (unit != TimeUnit.NANOSECONDS) {
                    timeout = TimeUnit.NANOSECONDS.convert(timeout, unit);
                    unit = TimeUnit.NANOSECONDS;
                }
                if ((inputFuture = this.inputFuture) != null) {
                    start = System.nanoTime();
                    inputFuture.get(timeout, unit);
                    timeout -= Math.max(0L, System.nanoTime() - start);
                }
                start = System.nanoTime();
                if (!this.outputCreated.await(timeout, unit)) {
                    throw new TimeoutException();
                }
                timeout -= Math.max(0L, System.nanoTime() - start);
                ListenableFuture<O> outputFuture = this.outputFuture;
                if (outputFuture != null) {
                    outputFuture.get(timeout, unit);
                }
            }
            return (O)super.get(timeout, unit);
        }

        @Override
        public boolean cancel(boolean mayInterruptIfRunning) {
            if (super.cancel(mayInterruptIfRunning)) {
                Uninterruptibles.putUninterruptibly(this.mayInterruptIfRunningChannel, mayInterruptIfRunning);
                this.cancel(this.inputFuture, mayInterruptIfRunning);
                this.cancel(this.outputFuture, mayInterruptIfRunning);
                return true;
            }
            return false;
        }

        private void cancel(@Nullable Future<?> future, boolean mayInterruptIfRunning) {
            if (future != null) {
                future.cancel(mayInterruptIfRunning);
            }
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         * Loose catch block
         */
        @Override
        public void run() {
            block16: {
                try {
                    I sourceResult;
                    try {
                        sourceResult = Uninterruptibles.getUninterruptibly(this.inputFuture);
                    }
                    catch (CancellationException e) {
                        this.cancel(false);
                        this.function = null;
                        this.inputFuture = null;
                        this.outputCreated.countDown();
                        return;
                    }
                    catch (ExecutionException e) {
                        this.setException(e.getCause());
                        this.function = null;
                        this.inputFuture = null;
                        this.outputCreated.countDown();
                        return;
                    }
                    this.outputFuture = this.function.apply(sourceResult);
                    final ListenableFuture<O> outputFuture = this.outputFuture;
                    if (this.isCancelled()) {
                        outputFuture.cancel(Uninterruptibles.takeUninterruptibly(this.mayInterruptIfRunningChannel));
                        this.outputFuture = null;
                        return;
                    }
                    outputFuture.addListener(new Runnable(){

                        /*
                         * WARNING - Removed try catching itself - possible behaviour change.
                         */
                        public void run() {
                            try {
                                ChainingListenableFuture.this.set(Uninterruptibles.getUninterruptibly(outputFuture));
                            }
                            catch (CancellationException e) {
                                ChainingListenableFuture.this.cancel(false);
                                return;
                            }
                            catch (ExecutionException e) {
                                ChainingListenableFuture.this.setException(e.getCause());
                            }
                            finally {
                                ChainingListenableFuture.this.outputFuture = null;
                            }
                        }
                    }, MoreExecutors.sameThreadExecutor());
                    break block16;
                    {
                        catch (UndeclaredThrowableException e) {
                            this.setException(e.getCause());
                            break block16;
                        }
                        catch (RuntimeException e) {
                            this.setException(e);
                            break block16;
                        }
                        catch (Error e) {
                            this.setException(e);
                            break block16;
                        }
                        catch (Throwable throwable) {
                            throw throwable;
                        }
                    }
                }
                finally {
                    this.function = null;
                    this.inputFuture = null;
                    this.outputCreated.countDown();
                }
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class ListFuture<V>
    extends AbstractFuture<List<V>> {
        ImmutableList<? extends ListenableFuture<? extends V>> futures;
        final boolean allMustSucceed;
        final AtomicInteger remaining;
        List<V> values;

        ListFuture(ImmutableList<? extends ListenableFuture<? extends V>> futures, boolean allMustSucceed, Executor listenerExecutor) {
            this.futures = futures;
            this.values = Lists.newArrayListWithCapacity(futures.size());
            this.allMustSucceed = allMustSucceed;
            this.remaining = new AtomicInteger(futures.size());
            this.init(listenerExecutor);
        }

        private void init(Executor listenerExecutor) {
            this.addListener(new Runnable(){

                public void run() {
                    ListFuture.this.values = null;
                    ListFuture.this.futures = null;
                }
            }, MoreExecutors.sameThreadExecutor());
            if (this.futures.isEmpty()) {
                this.set(Lists.newArrayList(this.values));
                return;
            }
            for (int i = 0; i < this.futures.size(); ++i) {
                this.values.add(null);
            }
            ImmutableList<ListenableFuture<V>> localFutures = this.futures;
            int i = 0;
            while (i < localFutures.size()) {
                final ListenableFuture listenable = (ListenableFuture)localFutures.get(i);
                final int index = i++;
                listenable.addListener(new Runnable(){

                    public void run() {
                        ListFuture.this.setOneValue(index, listenable);
                    }
                }, listenerExecutor);
            }
        }

        /*
         * Exception decompiling
         */
        private void setOneValue(int index, Future<? extends V> future) {
            /*
             * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
             * 
             * org.benf.cfr.reader.util.ConfusedCFRException: Started 3 blocks at once
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
             *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
             *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
             *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
             *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseInnerClassesPass1(ClassFile.java:923)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1035)
             *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
             *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
             *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
             *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
             *     at org.benf.cfr.reader.Main.main(Main.java:54)
             */
            throw new IllegalStateException("Decompilation failed");
        }

        @Override
        public List<V> get() throws InterruptedException, ExecutionException {
            this.callAllGets();
            return (List)super.get();
        }

        private void callAllGets() throws InterruptedException {
            ImmutableList<ListenableFuture<V>> oldFutures = this.futures;
            if (oldFutures != null && !this.isDone()) {
                for (ListenableFuture listenableFuture : oldFutures) {
                    while (!listenableFuture.isDone()) {
                        try {
                            listenableFuture.get();
                        }
                        catch (Error e) {
                            throw e;
                        }
                        catch (InterruptedException e) {
                            throw e;
                        }
                        catch (Throwable e) {
                            if (!this.allMustSucceed) continue;
                            return;
                        }
                    }
                }
            }
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class MappingCheckedFuture<V, X extends Exception>
    extends AbstractCheckedFuture<V, X> {
        final Function<Exception, X> mapper;

        MappingCheckedFuture(ListenableFuture<V> delegate, Function<Exception, X> mapper) {
            super(delegate);
            this.mapper = Preconditions.checkNotNull(mapper);
        }

        @Override
        protected X mapException(Exception e) {
            return (X)((Exception)this.mapper.apply(e));
        }
    }
}

