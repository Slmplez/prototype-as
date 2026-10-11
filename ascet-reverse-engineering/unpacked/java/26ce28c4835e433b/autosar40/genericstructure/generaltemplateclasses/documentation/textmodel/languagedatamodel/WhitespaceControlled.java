/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.XmlSpaceEnum;

public interface WhitespaceControlled
extends ARObject {
    public XmlSpaceEnum getXmlSpace();

    public void setXmlSpace(XmlSpaceEnum var1);

    public void unsetXmlSpace();

    public boolean isSetXmlSpace();
}

