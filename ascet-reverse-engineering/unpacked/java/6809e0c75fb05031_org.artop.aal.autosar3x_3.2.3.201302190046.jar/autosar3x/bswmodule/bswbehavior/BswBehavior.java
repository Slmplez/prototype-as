/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.bswmodule.bswbehavior;

import autosar3x.bswmodule.bswbehavior.BswEvent;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswoverview.BswModuleDescription;
import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswBehavior
extends ARElement {
    public EList<BswModuleEntity> getEntities();

    public EList<BswEvent> getEvents();

    public EList<ExclusiveArea> getExclusiveAreas();

    public BswModuleDescription getModule();

    public void setModule(BswModuleDescription var1);
}

