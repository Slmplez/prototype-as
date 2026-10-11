/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharContents;

public interface PrmChar
extends ARObject {
    public GeneralParameter getGeneralParameter();

    public void setGeneralParameter(GeneralParameter var1);

    public DocumentationBlock getCond();

    public void setCond(DocumentationBlock var1);

    public PrmCharContents getPrmCharContents();

    public void setPrmCharContents(PrmCharContents var1);

    public DocumentationBlock getRemark();

    public void setRemark(DocumentationBlock var1);
}

