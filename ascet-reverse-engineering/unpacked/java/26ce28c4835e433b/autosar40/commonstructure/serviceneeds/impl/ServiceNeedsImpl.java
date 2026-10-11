/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public abstract class ServiceNeedsImpl
extends IdentifiableImpl
implements ServiceNeeds {
    protected ServiceNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.SERVICE_NEEDS;
    }
}

