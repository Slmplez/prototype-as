/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.measurementcalibrationsupport;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.commonstructure.measurementcalibrationsupport.McDataInstance;
import autosar40.commonstructure.measurementcalibrationsupport.McSwEmulationMethodSupport;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface McSupportData
extends ARObject {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public EList<McSwEmulationMethodSupport> getEmulationSupports();

    public EList<McDataInstance> getMcParameterInstances();

    public EList<McDataInstance> getMcVariableInstances();

    public EList<SwSystemconstantValueSet> getMeasurableSystemConstantValues();
}

