/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.swclass;

import autosar3x.commonstructure.swclass.SwCalprmImpl;
import autosar3x.commonstructure.swclass.SwClassImpl;
import autosar3x.commonstructure.swclass.SwClassInstance;
import autosar3x.commonstructure.swclass.SwVariableImpl;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwClassAttrInstanceImpl
extends ARObject {
    public SwClassInstance getSwClassInstance();

    public void setSwClassInstance(SwClassInstance var1);

    public EList<SwVariableImpl> getSwVariableImpls();

    public EList<SwCalprmImpl> getSwCalprmImpls();

    public EList<SwClassImpl> getSwClassImpls();
}

