/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal.handlers;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.internal.ExceptionHandler;

public class WidgetMethodHandler
extends AbstractHandler
implements IExecutableExtension {
    protected static final Class[] NO_PARAMETERS = new Class[0];
    protected String methodName;
    private Listener focusListener;
    private Display display = Display.getCurrent();
    static /* synthetic */ Class class$0;

    public WidgetMethodHandler() {
        if (this.display != null) {
            this.focusListener = new Listener(){

                public void handleEvent(Event event) {
                    WidgetMethodHandler.this.updateEnablement();
                }
            };
            this.display.addFilter(15, this.focusListener);
        }
    }

    void updateEnablement() {
        boolean rc = this.isHandled();
        if (rc != this.isEnabled()) {
            this.setBaseEnabled(rc);
        }
    }

    public void setEnabled(Object evaluationContext) {
        this.updateEnablement();
    }

    public Object execute(ExecutionEvent event) throws ExecutionException {
        block9: {
            final Method methodToExecute = this.getMethodToExecute();
            if (methodToExecute != null) {
                try {
                    final Control focusControl = Display.getCurrent().getFocusControl();
                    if (focusControl instanceof Composite && (((Composite)focusControl).getStyle() & 0x1000000) != 0) {
                        try {
                            final Object focusComponent = this.getFocusComponent();
                            if (focusComponent != null) {
                                Runnable methodRunnable = new Runnable(){

                                    public void run() {
                                        try {
                                            methodToExecute.invoke(focusComponent, null);
                                        }
                                        catch (IllegalAccessException illegalAccessException) {
                                        }
                                        catch (InvocationTargetException e) {
                                            focusControl.getDisplay().asyncExec(new Runnable(this, methodToExecute, e){
                                                final /* synthetic */ 2 this$1;
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
                            }
                            break block9;
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            break block9;
                        }
                        catch (NoSuchMethodException noSuchMethodException) {
                            throw new Error("Something is seriously wrong here");
                        }
                    }
                    methodToExecute.invoke(focusControl, null);
                }
                catch (IllegalAccessException illegalAccessException) {
                }
                catch (InvocationTargetException e) {
                    throw new ExecutionException("An exception occurred while executing " + methodToExecute.getName(), e.getTargetException());
                }
            }
        }
        return null;
    }

    protected void swingInvokeLater(Runnable methodRunnable) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class<?> swingUtilitiesClass = Class.forName("javax.swing.SwingUtilities");
        Class[] classArray = new Class[1];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("java.lang.Runnable");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Method swingUtilitiesInvokeLaterMethod = swingUtilitiesClass.getMethod("invokeLater", classArray);
        swingUtilitiesInvokeLaterMethod.invoke(swingUtilitiesClass, methodRunnable);
    }

    protected Object getFocusComponent() throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        Class<?> keyboardFocusManagerClass = null;
        try {
            keyboardFocusManagerClass = Class.forName("java.awt.KeyboardFocusManager");
        }
        catch (ClassNotFoundException classNotFoundException) {}
        if (keyboardFocusManagerClass != null) {
            Method keyboardFocusManagerGetCurrentKeyboardFocusManagerMethod = keyboardFocusManagerClass.getMethod("getCurrentKeyboardFocusManager", null);
            Object keyboardFocusManager = keyboardFocusManagerGetCurrentKeyboardFocusManagerMethod.invoke(keyboardFocusManagerClass, null);
            Method keyboardFocusManagerGetFocusOwner = keyboardFocusManagerClass.getMethod("getFocusOwner", null);
            Object focusComponent = keyboardFocusManagerGetFocusOwner.invoke(keyboardFocusManager, null);
            return focusComponent;
        }
        Class<?> focusManagerClass = Class.forName("javax.swing.FocusManager");
        Method focusManagerGetCurrentManagerMethod = focusManagerClass.getMethod("getCurrentManager", null);
        Object focusManager = focusManagerGetCurrentManagerMethod.invoke(focusManagerClass, null);
        Method focusManagerGetFocusOwner = focusManagerClass.getMethod("getFocusOwner", null);
        Object focusComponent = focusManagerGetFocusOwner.invoke(focusManager, null);
        return focusComponent;
    }

    public final boolean isHandled() {
        return this.getMethodToExecute() != null;
    }

    protected Method getMethodToExecute() {
        Display display = Display.getCurrent();
        if (display == null) {
            return null;
        }
        Control focusControl = display.getFocusControl();
        Method method = null;
        if (focusControl != null) {
            Class<?> clazz = focusControl.getClass();
            try {
                method = clazz.getMethod(this.methodName, NO_PARAMETERS);
            }
            catch (NoSuchMethodException noSuchMethodException) {}
        }
        if (method == null && focusControl instanceof Composite && (((Composite)focusControl).getStyle() & 0x1000000) != 0) {
            try {
                Object focusComponent = this.getFocusComponent();
                if (focusComponent != null) {
                    Class<?> clazz = focusComponent.getClass();
                    try {
                        method = clazz.getMethod(this.methodName, NO_PARAMETERS);
                    }
                    catch (NoSuchMethodException noSuchMethodException) {}
                }
            }
            catch (ClassNotFoundException classNotFoundException) {
            }
            catch (NoSuchMethodException noSuchMethodException) {
                throw new Error("Something is seriously wrong here");
            }
            catch (IllegalAccessException illegalAccessException) {
                throw new Error("Something is seriously wrong here");
            }
            catch (InvocationTargetException invocationTargetException) {
                throw new Error("Something is seriously wrong here");
            }
        }
        return method;
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) {
        this.methodName = data.toString();
    }

    public void dispose() {
        if (this.display != null && !this.display.isDisposed()) {
            this.display.removeFilter(15, this.focusListener);
        }
        this.display = null;
        this.focusListener = null;
    }
}

