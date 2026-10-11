/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.commonstructure.internalbehavior;

import autosar3x.commonstructure.internalbehavior.ExclusiveArea;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.commonstructure.internalbehavior.impl.InternalbehaviorFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InternalbehaviorFactory
extends EFactory {
    public static final InternalbehaviorFactory eINSTANCE = InternalbehaviorFactoryImpl.init();

    public ExclusiveArea createExclusiveArea();

    public InternalbehaviorPackage getInternalbehaviorPackage();
}

