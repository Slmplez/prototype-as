/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.artop.aal.common.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class AutosarObjectUtil {
    private static Map<EObject, Map<String, String>> arObjectToAbstractDests = Collections.synchronizedMap(new WeakHashMap());

    public static boolean isArObject(Object object) {
        if (object instanceof EObject) {
            return object.getClass().getName().matches("autosar\\d\\w\\..*");
        }
        return false;
    }

    public static boolean isAutosarResource(Resource resource) {
        EList contents;
        if (resource != null && (contents = resource.getContents()).size() > 0) {
            return AutosarObjectUtil.isArObject(contents.get(0));
        }
        return false;
    }

    public static Map<String, String> getEObjectAbstractDests(EObject referenceOwner) {
        return arObjectToAbstractDests.get(referenceOwner);
    }

    public static String getDest(EObject referenceOwner, int featureID, int index) {
        String dest = null;
        Map<String, String> featureIDAndIndexToDest = arObjectToAbstractDests.get(referenceOwner);
        if (featureIDAndIndexToDest != null) {
            StringBuilder buffer = new StringBuilder();
            buffer.append(featureID);
            buffer.append(" ");
            buffer.append(index);
            dest = featureIDAndIndexToDest.get(buffer.toString());
        }
        return dest;
    }

    public static void setDest(EObject referenceOwner, int featureID, int index, String dest) {
        StringBuilder buffer = new StringBuilder();
        buffer.append(featureID);
        buffer.append(" ");
        buffer.append(index);
        AutosarObjectUtil.setDest(referenceOwner, buffer.toString(), dest);
    }

    public static void shiftDestUp(EObject referenceOwner, int featureID, int startIndex, int endIndex) {
        Map<String, String> destMap = arObjectToAbstractDests.get(referenceOwner);
        if (destMap != null) {
            int index = endIndex;
            while (index >= startIndex) {
                StringBuilder buffer = new StringBuilder();
                buffer.append(featureID);
                buffer.append(" ");
                buffer.append(index);
                String dest = destMap.get(buffer.toString());
                if (dest != null) {
                    destMap.remove(buffer.toString());
                    buffer = new StringBuilder();
                    buffer.append(featureID);
                    buffer.append(" ");
                    buffer.append(index + 1);
                    destMap.put(buffer.toString(), dest);
                }
                --index;
            }
        }
    }

    public static void shiftDestDown(EObject referenceOwner, int featureID, int startIndex, int endIndex) {
        Map<String, String> destMap = arObjectToAbstractDests.get(referenceOwner);
        if (destMap != null) {
            int index = startIndex;
            while (index <= endIndex) {
                StringBuilder buffer = new StringBuilder();
                buffer.append(featureID);
                buffer.append(" ");
                buffer.append(index);
                String dest = destMap.get(buffer.toString());
                if (dest != null) {
                    destMap.remove(buffer.toString());
                    buffer = new StringBuilder();
                    buffer.append(featureID);
                    buffer.append(" ");
                    buffer.append(index - 1);
                    destMap.put(buffer.toString(), dest);
                }
                ++index;
            }
        }
    }

    public static void setDest(EObject referenceOwner, String key, String dest) {
        Map<String, String> featureIDAndIndexToDest = arObjectToAbstractDests.get(referenceOwner);
        if (featureIDAndIndexToDest == null && dest != null) {
            featureIDAndIndexToDest = new HashMap<String, String>();
            arObjectToAbstractDests.put(referenceOwner, featureIDAndIndexToDest);
        }
        if (featureIDAndIndexToDest != null) {
            if (dest == null) {
                featureIDAndIndexToDest.remove(key);
                if (featureIDAndIndexToDest.isEmpty()) {
                    arObjectToAbstractDests.remove(referenceOwner);
                }
            } else {
                featureIDAndIndexToDest.put(key, dest);
            }
        }
    }

    public static void clearDest(EObject referenceOwner) {
        arObjectToAbstractDests.remove(referenceOwner);
    }
}

