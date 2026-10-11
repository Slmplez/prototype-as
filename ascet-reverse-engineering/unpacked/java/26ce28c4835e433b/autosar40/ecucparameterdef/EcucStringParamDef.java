/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GStringParamDef
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAbstractStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import gautosar.gecucparameterdef.GStringParamDef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcucStringParamDef
extends EcucAbstractStringParamDef,
GStringParamDef {
    public EList<EcucStringParamDefConditional> getEcucStringParamDefVariants();
}

