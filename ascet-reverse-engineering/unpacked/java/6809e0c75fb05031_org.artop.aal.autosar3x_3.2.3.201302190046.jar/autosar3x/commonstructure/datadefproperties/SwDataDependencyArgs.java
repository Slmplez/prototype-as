/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.datadefproperties;

import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.genericstructure.infrastructure.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwDataDependencyArgs
extends ARObject {
    public SwDataDependency getSwDataDependency();

    public void setSwDataDependency(SwDataDependency var1);

    public EList<SwCalprmRefProxy> getSwCalprms();

    public EList<SwVariableRefProxy> getSwVariableRefs();
}

