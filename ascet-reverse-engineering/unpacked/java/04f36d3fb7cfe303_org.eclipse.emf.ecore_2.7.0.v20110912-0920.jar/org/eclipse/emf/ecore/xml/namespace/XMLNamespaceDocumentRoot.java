/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore.xml.namespace;

import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.xml.namespace.SpaceType;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLNamespaceDocumentRoot
extends EObject {
    public FeatureMap getMixed();

    public EMap<String, String> getXMLNSPrefixMap();

    public EMap<String, String> getXSISchemaLocation();

    public String getBase();

    public void setBase(String var1);

    public String getId();

    public void setId(String var1);

    public String getLang();

    public void setLang(String var1);

    public SpaceType getSpace();

    public void setSpace(SpaceType var1);

    public void unsetSpace();

    public boolean isSetSpace();
}

