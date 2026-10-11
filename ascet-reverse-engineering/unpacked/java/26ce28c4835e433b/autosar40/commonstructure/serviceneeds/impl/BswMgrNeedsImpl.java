/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.BswMgrNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.ecore.EClass;

public class BswMgrNeedsImpl
extends ServiceNeedsImpl
implements BswMgrNeeds {
    protected BswMgrNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.BSW_MGR_NEEDS;
    }
}

