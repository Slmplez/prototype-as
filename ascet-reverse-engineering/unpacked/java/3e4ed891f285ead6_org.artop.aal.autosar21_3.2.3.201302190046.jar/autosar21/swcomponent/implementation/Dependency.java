/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.implementation;

import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.implementation.DependencyUsageEnum;
import autosar21.swcomponent.implementation.Implementation;
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

