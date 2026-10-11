/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListenableFutureTask;
import com.google.common.util.concurrent.ListeningExecutorService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
abstract class AbstractListeningExecutorService
implements ListeningExecutorService {
    AbstractListeningExecutorService() {
    }

    @Override
    public ListenableFuture<?> submit(Runnable task) {
        ListenableFutureTask<Object> ftask = ListenableFutureTask.create(task, null);
        this.execute(ftask);
        return ftask;
    }

    @Override
    public <T> ListenableFuture<T> submit(Runnable task, T result) {
        ListenableFutureTask<T> ftask = ListenableFutureTask.create(task, result);
        this.execute(ftask);
        return ftask;
    }

    @Override
    public <T> ListenableFuture<T> submit(Callable<T> task) {
        ListenableFutureTask<T> ftask = ListenableFutureTask.create(task);
        this.execute(ftask);
        return ftask;
    }

    private <T> T doInvokeAny(Collection<? extends Callable<T>> tasks, boolean timed, long nanos) throws InterruptedException, ExecutionException, TimeoutException {
        ExecutionException ee;
        ArrayList futures;
        block15: {
            int ntasks = tasks.size();
            Preconditions.checkArgument(ntasks > 0);
            futures = new ArrayList(ntasks);
            ExecutorCompletionService<T> ecs = new ExecutorCompletionService<T>(this);
            ee = null;
            long lastTime = timed ? System.nanoTime() : 0L;
            Iterator<Callable<T>> it = tasks.iterator();
            futures.add(ecs.submit(it.next()));
            --ntasks;
            int active = 1;
            while (true) {
                Object now22;
                Future f;
                if ((f = ecs.poll()) == null) {
                    if (ntasks > 0) {
                        --ntasks;
                        futures.add(ecs.submit(it.next()));
                        ++active;
                    } else {
                        if (active == 0) break;
                        if (timed) {
                            f = ecs.poll(nanos, TimeUnit.NANOSECONDS);
                            if (f == null) {
                                throw new TimeoutException();
                            }
                            long now22 = System.nanoTime();
                            nanos -= now22 - lastTime;
                            lastTime = now22;
                        } else {
                            f = ecs.take();
                        }
                    }
                }
                if (f == null) continue;
                --active;
                try {
                    now22 = f.get();
                }
                catch (ExecutionException eex) {
                    ee = eex;
                    continue;
                }
                catch (RuntimeException rex) {
                    ee = new ExecutionException(rex);
                    continue;
                }
                return (T)now22;
                break;
            }
            if (ee != null) break block15;
            ee = new ExecutionException(null);
        }
        throw ee;
        finally {
            for (Future future : futures) {
                future.cancel(true);
            }
        }
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> tasks) throws InterruptedException, ExecutionException {
        try {
            return this.doInvokeAny(tasks, false, 0L);
        }
        catch (TimeoutException cannotHappen) {
            throw new AssertionError();
        }
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.doInvokeAny(tasks, true, unit.toNanos(timeout));
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks) throws InterruptedException {
        if (tasks == null) {
            throw new NullPointerException();
        }
        ArrayList<Future<T>> futures = new ArrayList<Future<T>>(tasks.size());
        boolean done = false;
        try {
            for (Callable<T> callable : tasks) {
                ListenableFutureTask<T> listenableFutureTask = ListenableFutureTask.create(callable);
                futures.add(listenableFutureTask);
                this.execute(listenableFutureTask);
            }
            for (Future future : futures) {
                if (future.isDone()) continue;
                try {
                    future.get();
                }
                catch (CancellationException cancellationException) {
                }
                catch (ExecutionException executionException) {}
            }
            done = true;
            ArrayList<Future<T>> arrayList = futures;
            return arrayList;
        }
        finally {
            if (!done) {
                for (Future future : futures) {
                    future.cancel(true);
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> tasks, long timeout, TimeUnit unit) throws InterruptedException {
        if (tasks == null || unit == null) {
            throw new NullPointerException();
        }
        long nanos = unit.toNanos(timeout);
        ArrayList<Future<T>> futures = new ArrayList<Future<T>>(tasks.size());
        boolean done = false;
        try {
            for (Callable<T> t : tasks) {
                futures.add(ListenableFutureTask.create(t));
            }
            long lastTime = System.nanoTime();
            Iterator it = futures.iterator();
            while (it.hasNext()) {
                this.execute((Runnable)it.next());
                long now = System.nanoTime();
                lastTime = now;
                if ((nanos -= now - lastTime) > 0L) continue;
                ArrayList<Future<T>> arrayList = futures;
                return arrayList;
            }
            for (Future future : futures) {
                if (future.isDone()) continue;
                if (nanos <= 0L) {
                    ArrayList<Future<T>> arrayList = futures;
                    return arrayList;
                }
                try {
                    future.get(nanos, TimeUnit.NANOSECONDS);
                }
                catch (CancellationException ignore) {
                }
                catch (ExecutionException ignore) {
                }
                catch (TimeoutException toe) {
                    ArrayList<Future<T>> arrayList = futures;
                    if (!done) {
                        for (Future future2 : futures) {
                            future2.cancel(true);
                        }
                    }
                    return arrayList;
                }
                long now = System.nanoTime();
                nanos -= now - lastTime;
                lastTime = now;
            }
            done = true;
            ArrayList<Future<T>> arrayList = futures;
            return arrayList;
        }
        finally {
            if (!done) {
                for (Future future : futures) {
                    future.cancel(true);
                }
            }
        }
    }
}

