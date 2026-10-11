/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package autosar3x.swcomponent.datatype.valuemodel;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface Vt
extends ARObject {
    public FeatureMap getMixed();

    public void unsetMixed();

    public boolean isSetMixed();

    public CompuConstTextContent getCompuConstTextContent();

    public void setCompuConstTextContent(CompuConstTextContent var1);

    public String getXmlspace();

    public void setXmlspace(String var1);

    public void unsetXmlspace();

    public boolean isSetXmlspace();

    public String getMixedText();

    public void setMixedText(String var1);
}

