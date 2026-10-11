/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswbehavior;

import autosar40.bswmodule.bswbehavior.BswEvent;
import autosar40.bswmodule.bswoverview.instancerefs.ModeInBswModuleDescriptionInstanceRef;
import autosar40.commonstructure.modedeclaration.ModeActivationKind;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModeSwitchEvent
extends BswEvent {
    public ModeActivationKind getActivation();

    public void setActivation(ModeActivationKind var1);

    public void unsetActivation();

    public boolean isSetActivation();

    public EList<ModeInBswModuleDescriptionInstanceRef> getModes();
}

