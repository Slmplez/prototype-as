/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.util.Util
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.internal.editorsupport;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.util.Util;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.PrefUtil;
import org.osgi.framework.Bundle;

public final class ComponentSupport {
    static /* synthetic */ Class class$0;

    public static boolean inPlaceEditorSupported() {
        if (PrefUtil.getAPIPreferenceStore().getBoolean("DISABLE_OPEN_EDITOR_IN_PLACE")) {
            return false;
        }
        return Util.isWindows();
    }

    public static IEditorPart getSystemInPlaceEditor() {
        if (ComponentSupport.inPlaceEditorSupported()) {
            return ComponentSupport.getOleEditor();
        }
        return null;
    }

    public static boolean inPlaceEditorAvailable(String filename) {
        if (ComponentSupport.inPlaceEditorSupported()) {
            return ComponentSupport.testForOleEditor(filename);
        }
        return false;
    }

    private static IEditorPart getOleEditor() {
        Bundle bundle = Platform.getBundle((String)"org.eclipse.ui.ide");
        if (!BundleUtility.isActivated(bundle)) {
            return null;
        }
        try {
            Class c = bundle.loadClass("org.eclipse.ui.internal.editorsupport.win32.OleEditor");
            return (IEditorPart)c.newInstance();
        }
        catch (ClassNotFoundException classNotFoundException) {
            return null;
        }
        catch (IllegalAccessException illegalAccessException) {
            return null;
        }
        catch (InstantiationException instantiationException) {
            return null;
        }
    }

    public static boolean testForOleEditor(String filename) {
        int nDot = filename.lastIndexOf(46);
        if (nDot >= 0) {
            try {
                String strName = filename.substring(nDot);
                Class<?> oleClass = Class.forName("org.eclipse.swt.ole.win32.OLE");
                Class[] classArray = new Class[1];
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("java.lang.String");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz;
                Method findMethod = oleClass.getDeclaredMethod("findProgramID", classArray);
                strName = (String)findMethod.invoke(null, strName);
                if (strName.length() > 0) {
                    return true;
                }
            }
            catch (ClassNotFoundException classNotFoundException) {
                return false;
            }
            catch (NoSuchMethodException noSuchMethodException) {
                return false;
            }
            catch (IllegalAccessException illegalAccessException) {
                return false;
            }
            catch (InvocationTargetException invocationTargetException) {
                return false;
            }
        }
        return false;
    }
}

