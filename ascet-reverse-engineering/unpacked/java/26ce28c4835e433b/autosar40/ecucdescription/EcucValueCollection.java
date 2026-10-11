/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucdescription;

import autosar40.ecucdescription.EcucModuleConfigurationValuesRefConditional;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.system.System;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucValueCollection
extends ARElement {
    public System getEcuExtract();

    public void setEcuExtract(System var1);

    public EList<EcucModuleConfigurationValuesRefConditional> getEcucValues();
}

