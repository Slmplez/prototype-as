/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.internalbehavior;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.internalbehavior.ExclusiveArea;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExecutableEntity
extends Identifiable,
GExecutableEntity {
    public EList<ExclusiveArea> getCanEnterExclusiveAreas();

    public Double getMinimumStartInterval();

    public void setMinimumStartInterval(Double var1);

    public void unsetMinimumStartInterval();

    public boolean isSetMinimumStartInterval();

    public EList<ExclusiveArea> getRunsInsideExclusiveAreas();

    public SwAddrMethod getSwAddrMethod();

    public void setSwAddrMethod(SwAddrMethod var1);
}

