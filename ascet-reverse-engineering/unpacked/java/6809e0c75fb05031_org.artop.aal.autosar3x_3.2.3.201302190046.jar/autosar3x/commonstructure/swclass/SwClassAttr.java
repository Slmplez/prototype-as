/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.swclass.SwCalprmPrototype;
import autosar3x.commonstructure.swclass.SwVariablePrototype;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwClassAttr
extends ARObject {
    public EList<SwVariablePrototype> getSwVariablePrototypes();

    public EList<SwCalprmPrototype> getSwCalprmPrototypes();
}

