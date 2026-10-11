/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.sphinx.emf.resource;

import org.eclipse.sphinx.emf.Activator;

public interface IXMLMarker {
    public static final String XML_WELLFORMEDNESS_PROBLEM = String.valueOf(Activator.getPlugin().getSymbolicName()) + ".xmlwellformednessproblemmarker";
    public static final String XML_INTEGRITY_PROBLEM = String.valueOf(Activator.getPlugin().getSymbolicName()) + ".xmlintegrityproblemmarker";
    public static final String XML_VALIDITY_PROBLEM = String.valueOf(Activator.getPlugin().getSymbolicName()) + ".xmlvalidityproblemmarker";
}

