/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EcuParameterDefinition
extends ARElement {
    public EList<ModuleDef> getModules();
}

