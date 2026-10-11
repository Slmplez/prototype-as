/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.bswmodule.bswbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswCalledEntity;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswbehavior.impl.BswModuleEntityImpl;
import org.eclipse.emf.ecore.EClass;

public class BswCalledEntityImpl
extends BswModuleEntityImpl
implements BswCalledEntity {
    protected BswCalledEntityImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_CALLED_ENTITY;
    }
}

