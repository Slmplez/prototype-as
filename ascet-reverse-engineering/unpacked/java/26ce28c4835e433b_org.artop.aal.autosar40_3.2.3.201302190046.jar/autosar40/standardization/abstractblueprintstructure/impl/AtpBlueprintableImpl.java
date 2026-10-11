/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.standardization.abstractblueprintstructure.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import org.eclipse.emf.ecore.EClass;

public class AtpBlueprintableImpl
extends IdentifiableImpl
implements AtpBlueprintable {
    protected AtpBlueprintableImpl() {
    }

    protected EClass eStaticClass() {
        return AbstractblueprintstructurePackage.Literals.ATP_BLUEPRINTABLE;
    }
}

