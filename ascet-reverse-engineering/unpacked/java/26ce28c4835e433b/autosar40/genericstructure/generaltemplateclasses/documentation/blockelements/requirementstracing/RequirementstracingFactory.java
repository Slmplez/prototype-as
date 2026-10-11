/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.RequirementstracingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface RequirementstracingFactory
extends EFactory {
    public static final RequirementstracingFactory eINSTANCE = RequirementstracingFactoryImpl.init();

    public StructuredReq createStructuredReq();

    public TraceableText createTraceableText();

    public RequirementstracingPackage getRequirementstracingPackage();
}

