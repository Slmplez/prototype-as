/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.commonstructure.internalbehavior.impl;

import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public class ExecutableEntityImpl
extends IdentifiableImpl
implements ExecutableEntity {
    protected ExecutableEntityImpl() {
    }

    protected EClass eStaticClass() {
        return InternalbehaviorPackage.Literals.EXECUTABLE_ENTITY;
    }
}

