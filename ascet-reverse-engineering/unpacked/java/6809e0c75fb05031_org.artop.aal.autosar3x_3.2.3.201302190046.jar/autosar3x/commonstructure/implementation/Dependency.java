/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.implementation;

import autosar3x.commonstructure.implementation.DependencyUsageEnum;
import autosar3x.commonstructure.implementation.Implementation;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Dependency
extends Identifiable {
    public Implementation getImplementation();

    public void setImplementation(Implementation var1);

    public EList<DependencyUsageEnum> getUsages();

    public void unsetUsages();

    public boolean isSetUsages();
}

