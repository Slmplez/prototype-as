/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.implementation;

import autosar40.commonstructure.implementation.DependencyUsageEnum;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.AutosarEngineeringObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DependencyOnArtifact
extends Identifiable {
    public AutosarEngineeringObject getArtifactDescriptor();

    public void setArtifactDescriptor(AutosarEngineeringObject var1);

    public EList<DependencyUsageEnum> getUsages();

    public void unsetUsages();

    public boolean isSetUsages();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

