/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.datadefproperties;

import autosar40.commonstructure.datadefproperties.SwDataDependency;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwDataDependencyArgs
extends ARObject {
    public SwDataDependency getSwDataDependency();

    public void setSwDataDependency(SwDataDependency var1);

    public EList<SwCalprmRefProxy> getSwCalprmRefs();

    public EList<SwVariableRefProxy> getSwVariables();
}

