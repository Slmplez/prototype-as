/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.databinding.property.INativePropertyListener
 *  org.eclipse.core.databinding.property.IProperty
 *  org.eclipse.core.databinding.property.ISimplePropertyListener
 *  org.eclipse.core.databinding.property.NativePropertyListener
 *  org.eclipse.core.databinding.property.value.SimpleValueProperty
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 */
package org.eclipse.jface.internal.databinding.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.databinding.property.INativePropertyListener;
import org.eclipse.core.databinding.property.IProperty;
import org.eclipse.core.databinding.property.ISimplePropertyListener;
import org.eclipse.core.databinding.property.NativePropertyListener;
import org.eclipse.core.databinding.property.value.SimpleValueProperty;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;

public class JFaceProperty
extends SimpleValueProperty {
    private Class returnType;
    private Method setterMethod;
    private Method getterMethod;
    private final String property;
    private Method removePropertyListenerMethod;
    private Method addPropertyListenerMethod;
    static /* synthetic */ Class class$0;

    private static String getSetterName(String fieldName) {
        return "set" + JFaceProperty.toMethodSuffix(fieldName);
    }

    private static String getGetterName(String fieldName) {
        return "get" + JFaceProperty.toMethodSuffix(fieldName);
    }

    private static String getBooleanGetterName(String fieldName) {
        return "is" + JFaceProperty.toMethodSuffix(fieldName);
    }

    private static String toMethodSuffix(String fieldName) {
        if (Character.isLowerCase(fieldName.charAt(0))) {
            return String.valueOf(Character.toUpperCase(fieldName.charAt(0))) + fieldName.substring(1);
        }
        return fieldName;
    }

    public JFaceProperty(String fieldName, String property, Class clazz) {
        this.property = property;
        try {
            try {
                String getterName = JFaceProperty.getGetterName(fieldName);
                this.getterMethod = clazz.getMethod(getterName, new Class[0]);
            }
            catch (NoSuchMethodException noSuchMethodException) {
                String getterName = JFaceProperty.getBooleanGetterName(fieldName);
                this.getterMethod = clazz.getMethod(getterName, new Class[0]);
            }
            this.returnType = this.getterMethod.getReturnType();
            this.setterMethod = clazz.getMethod(JFaceProperty.getSetterName(fieldName), this.returnType);
            Class[] classArray = new Class[1];
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.jface.util.IPropertyChangeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            this.addPropertyListenerMethod = clazz.getMethod("addPropertyChangeListener", classArray);
            Class[] classArray2 = new Class[1];
            Class<?> clazz3 = class$0;
            if (clazz3 == null) {
                try {
                    clazz3 = class$0 = Class.forName("org.eclipse.jface.util.IPropertyChangeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray2[0] = clazz3;
            this.removePropertyListenerMethod = clazz.getMethod("removePropertyChangeListener", classArray2);
        }
        catch (SecurityException securityException) {
            throw new IllegalArgumentException();
        }
        catch (NoSuchMethodException noSuchMethodException) {
            throw new IllegalArgumentException();
        }
    }

    public INativePropertyListener adaptListener(ISimplePropertyListener listener) {
        return new Listener(listener);
    }

    protected Object doGetValue(Object model) {
        try {
            return this.getterMethod.invoke(model, new Object[0]);
        }
        catch (InvocationTargetException e) {
            throw new IllegalStateException(e.getMessage());
        }
        catch (IllegalAccessException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    protected void doSetValue(Object model, Object value) {
        try {
            this.setterMethod.invoke(model, value);
        }
        catch (IllegalAccessException e) {
            throw new IllegalStateException(e.getMessage());
        }
        catch (InvocationTargetException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public Object getValueType() {
        return this.returnType;
    }

    class Listener
    extends NativePropertyListener
    implements IPropertyChangeListener {
        public Listener(ISimplePropertyListener listener) {
            super((IProperty)JFaceProperty.this, listener);
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (event.getProperty().equals(JFaceProperty.this.property)) {
                this.fireChange(event.getSource(), null);
            }
        }

        protected void doAddTo(Object model) {
            try {
                JFaceProperty.this.addPropertyListenerMethod.invoke(model, new Object[]{this});
            }
            catch (Exception e) {
                throw new IllegalStateException(e.getMessage());
            }
        }

        protected void doRemoveFrom(Object model) {
            try {
                JFaceProperty.this.removePropertyListenerMethod.invoke(model, new Object[]{this});
            }
            catch (Exception e) {
                throw new IllegalStateException(e.getMessage());
            }
        }
    }
}

