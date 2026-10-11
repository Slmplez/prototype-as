/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.ILogListener
 *  org.eclipse.core.runtime.IStatus
 *  org.osgi.framework.Bundle
 */
package org.eclipse.pde.internal.build;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.ILogListener;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.pde.internal.build.BundleHelper;
import org.osgi.framework.Bundle;

public class AntLogAdapter
implements ILog {
    private final Object antLog;
    private Method log;
    static /* synthetic */ Class class$0;

    public AntLogAdapter(Object antLog) throws NoSuchMethodException {
        this.antLog = antLog;
        try {
            Class<?> clazz = antLog.getClass();
            Class[] classArray = new Class[2];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            classArray[1] = Integer.TYPE;
            this.log = clazz.getMethod("log", classArray);
        }
        catch (SecurityException e) {
            e.printStackTrace();
        }
    }

    public void addLogListener(ILogListener listener) {
        throw new UnsupportedOperationException();
    }

    public Bundle getBundle() {
        return BundleHelper.getDefault().getBundle();
    }

    public void log(IStatus status) {
        try {
            IStatus[] nestedStatus;
            String statusMessage = status.getMessage();
            String exceptionMessage = status.getException() != null ? status.getException().getMessage() : null;
            this.log.invoke(this.antLog, statusMessage, new Integer(this.mapLogLevels(status.getSeverity())));
            if (exceptionMessage != null && !exceptionMessage.equals(statusMessage)) {
                this.log.invoke(this.antLog, exceptionMessage, new Integer(this.mapLogLevels(status.getSeverity())));
            }
            if ((nestedStatus = status.getChildren()) != null) {
                int i = 0;
                while (i < nestedStatus.length) {
                    this.log(nestedStatus[i]);
                    ++i;
                }
            }
        }
        catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
        catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }

    private int mapLogLevels(int iStatusLevel) {
        switch (iStatusLevel) {
            case 4: {
                return 0;
            }
            case 0: {
                return 2;
            }
            case 1: {
                return 2;
            }
            case 2: {
                return 1;
            }
        }
        return 1;
    }

    public void removeLogListener(ILogListener listener) {
        throw new UnsupportedOperationException();
    }
}

