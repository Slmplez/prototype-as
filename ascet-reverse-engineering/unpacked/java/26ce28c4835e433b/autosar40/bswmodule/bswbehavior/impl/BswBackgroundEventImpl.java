/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswBackgroundEvent;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswEventImpl;
import org.eclipse.emf.ecore.EClass;

public class BswBackgroundEventImpl
extends BswEventImpl
implements BswBackgroundEvent {
    protected BswBackgroundEventImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_BACKGROUND_EVENT;
    }
}

