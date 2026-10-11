/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package com.etas.ascet.importer.a2a.util;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.EcoreUtil;

public final class AutosarScoping {
    public static String getARPath(GIdentifiable obj) {
        if (obj != null) {
            String ref = EcoreUtil.getURI((EObject)obj).toString();
            return ref.substring(ref.indexOf(35) + 1, ref.indexOf(63));
        }
        return "";
    }

    public static String getNameSpace(GIdentifiable obj) {
        String arPath = AutosarScoping.getARPath(obj);
        if (arPath != null) {
            return arPath.substring(0, arPath.lastIndexOf(obj.gGetShortName()) - 1);
        }
        return "";
    }

    public static String getPackageName(String p, String name) {
        return String.valueOf(p) + "/" + name;
    }
}

