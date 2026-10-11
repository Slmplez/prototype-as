/*
 * Decompiled with CFR 0.152.
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucParameterValue;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;

public interface EcucAddInfoParamValue
extends EcucParameterValue {
    public DocumentationBlock getValue();

    public void setValue(DocumentationBlock var1);
}

