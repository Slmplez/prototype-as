/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Combo
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.handlers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Combo;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.ExceptionHandler;
import org.eclipse.ui.internal.handlers.WidgetMethodHandler;

public class SelectAllHandler
extends WidgetMethodHandler {
    private static final Class[] METHOD_PARAMETERS;
    static /* synthetic */ Class class$0;

    static {
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.swt.graphics.Point");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        METHOD_PARAMETERS = classArray;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final Object execute(ExecutionEvent event) throws ExecutionException {
        final Method methodToExecute = this.getMethodToExecute();
        if (methodToExecute == null) return null;
        try {
            final Control focusControl = Display.getCurrent().getFocusControl();
            int numParams = methodToExecute.getParameterTypes().length;
            if (focusControl instanceof Composite && (((Composite)focusControl).getStyle() & 0x1000000) != 0) {
                if (numParams != 0) {
                    return null;
                }
                try {
                    final Object focusComponent = this.getFocusComponent();
                    if (focusComponent == null) return null;
                    Runnable methodRunnable = new Runnable(){

                        public void run() {
                            try {
                                methodToExecute.invoke(focusComponent, null);
                                focusControl.getDisplay().asyncExec(new Runnable(this, focusControl){
                                    final /* synthetic */ 1 this$1;
                                    private final /* synthetic */ Control val$focusControl;
                                    {
                                        this.this$1 = var1_1;
                                        this.val$focusControl = control;
                                    }

                                    public void run() {
                                        if (!this.val$focusControl.isDisposed()) {
                                            this.val$focusControl.notifyListeners(13, null);
                                        }
                                    }
                                });
                            }
                            catch (IllegalAccessException illegalAccessException) {
                            }
                            catch (InvocationTargetException e) {
                                focusControl.getDisplay().asyncExec(new Runnable(this, methodToExecute, e){
                                    final /* synthetic */ 1 this$1;
                                    private final /* synthetic */ Method val$methodToExecute;
                                    private final /* synthetic */ InvocationTargetException val$e;
                                    {
                                        this.this$1 = var1_1;
                                        this.val$methodToExecute = method;
                                        this.val$e = invocationTargetException;
                                    }

                                    public void run() {
                                        ExceptionHandler.getInstance().handleException(new ExecutionException("An exception occurred while executing " + this.val$methodToExecute.getName(), this.val$e.getTargetException()));
                                    }
                                });
                            }
                        }
                    };
                    this.swingInvokeLater(methodRunnable);
                    return null;
                }
                catch (ClassNotFoundException classNotFoundException) {
                    return null;
                }
                catch (NoSuchMethodException noSuchMethodException) {
                    throw new Error("Something is seriously wrong here");
                }
            }
            if (numParams == 0) {
                methodToExecute.invoke(focusControl, null);
                focusControl.notifyListeners(13, null);
                return null;
            }
            if (numParams != 1) throw new ExecutionException("Too many parameters on select all", (Throwable)new Exception());
            Method textLimitAccessor = focusControl.getClass().getMethod("getTextLimit", NO_PARAMETERS);
            Integer textLimit = (Integer)textLimitAccessor.invoke(focusControl, null);
            Object[] parameters = new Object[]{new Point(0, textLimit.intValue())};
            methodToExecute.invoke(focusControl, parameters);
            if (focusControl instanceof Combo) return null;
            focusControl.notifyListeners(13, null);
            return null;
        }
        catch (IllegalAccessException illegalAccessException) {
            return null;
        }
        catch (InvocationTargetException e) {
            throw new ExecutionException("An exception occurred while executing " + this.getMethodToExecute(), e.getTargetException());
        }
        catch (NoSuchMethodException noSuchMethodException) {}
        return null;
    }

    protected Method getMethodToExecute() {
        Control focusControl;
        Method method = super.getMethodToExecute();
        if (method == null && (focusControl = Display.getCurrent().getFocusControl()) != null) {
            try {
                method = focusControl.getClass().getMethod("setSelection", METHOD_PARAMETERS);
            }
            catch (NoSuchMethodException noSuchMethodException) {}
        }
        return method;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        this.methodName = "selectAll";
    }
}

