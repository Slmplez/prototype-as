/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.core;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.sat4j.specs.ISolver;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class ASolverFactory<T extends ISolver>
implements Serializable {
    private static final long serialVersionUID = 1L;

    public String[] solverNames() {
        ArrayList<String> arrayList = new ArrayList<String>();
        Method[] methodArray = this.getClass().getDeclaredMethods();
        for (int i = 0; i < methodArray.length; ++i) {
            if (methodArray[i].getParameterTypes().length != 0 || !methodArray[i].getName().startsWith("new")) continue;
            arrayList.add(methodArray[i].getName().substring(3));
        }
        String[] stringArray = new String[arrayList.size()];
        arrayList.toArray(stringArray);
        return stringArray;
    }

    public T createSolverByName(String string) {
        try {
            Class[] classArray = new Class[]{};
            Method method = this.getClass().getMethod(new StringBuffer().append("new").append(string).toString(), classArray);
            return (T)((ISolver)method.invoke(null, null));
        }
        catch (SecurityException securityException) {
            System.err.println(securityException.getLocalizedMessage());
        }
        catch (IllegalArgumentException illegalArgumentException) {
            System.err.println(illegalArgumentException.getLocalizedMessage());
        }
        catch (NoSuchMethodException noSuchMethodException) {
            System.err.println(noSuchMethodException.getLocalizedMessage());
        }
        catch (IllegalAccessException illegalAccessException) {
            System.err.println(illegalAccessException.getLocalizedMessage());
        }
        catch (InvocationTargetException invocationTargetException) {
            System.err.println(invocationTargetException.getLocalizedMessage());
        }
        return null;
    }

    public abstract T defaultSolver();

    public abstract T lightSolver();
}

