/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.xmi.XMLResource;

public interface XMIResource
extends XMLResource {
    public static final String OPTION_USE_XMI_TYPE = "USE_XMI_TYPE";
    public static final String OPTION_SUPPRESS_XMI = "SUPPRESS_XMI";
    public static final String VERSION_NAME = "version";
    public static final String VERSION_VALUE = "2.0";
    public static final String XMI_NAMESPACE_PREFIX = "http://schema.omg.org/spec/XMI/";
    public static final String XMI_NS = "xmi";
    public static final String XMI_ID = "id";
    public static final String XMI_TAG_NAME = "XMI";
    public static final String XMI_URI = "http://www.omg.org/XMI";

    public String getXMIVersion();

    public void setXMIVersion(String var1);

    public String getXMINamespace();

    public void setXMINamespace(String var1);
}

