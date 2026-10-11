/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.emf.transaction;

import org.eclipse.core.runtime.IStatus;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface RunnableWithResult<T>
extends Runnable {
    public T getResult();

    public void setStatus(IStatus var1);

    public IStatus getStatus();

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static abstract class Impl<T>
    implements RunnableWithResult<T> {
        private T result;
        private IStatus status;

        protected final void setResult(T result) {
            this.result = result;
        }

        @Override
        public final IStatus getStatus() {
            return this.status;
        }

        @Override
        public final T getResult() {
            return this.result;
        }

        @Override
        public final void setStatus(IStatus status) {
            this.status = status;
        }
    }
}

