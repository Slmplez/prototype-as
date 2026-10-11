/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar21.swcomponent.datatype.valuemodel;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.computationmethod.CompuConstTextContent;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Vt
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public CompuConstTextContent getCompuConstTextContent();

    public void setCompuConstTextContent(CompuConstTextContent var1);

    public EList<String> getXmlspaces();

    public void unsetXmlspaces();

    public boolean isSetXmlspaces();

    public String getMixedText();

    public void setMixedText(String var1);
}

