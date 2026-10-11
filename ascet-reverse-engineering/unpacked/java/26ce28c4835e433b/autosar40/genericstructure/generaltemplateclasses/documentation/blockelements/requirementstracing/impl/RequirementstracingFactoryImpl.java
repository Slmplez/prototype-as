/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.StructuredReqImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.TraceableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.impl.TraceableTextImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class RequirementstracingFactoryImpl
extends EFactoryImpl
implements RequirementstracingFactory {
    public static RequirementstracingFactory init() {
        try {
            RequirementstracingFactory theRequirementstracingFactory = (RequirementstracingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/rt");
            if (theRequirementstracingFactory != null) {
                return theRequirementstracingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new RequirementstracingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createStructuredReq();
            }
            case 2: {
                return this.createTraceableText();
            }
            case 3: {
                return this.createTraceable();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public StructuredReq createStructuredReq() {
        StructuredReqImpl structuredReq = new StructuredReqImpl();
        return structuredReq;
    }

    public TraceableText createTraceableText() {
        TraceableTextImpl traceableText = new TraceableTextImpl();
        return traceableText;
    }

    public Traceable createTraceable() {
        TraceableImpl traceable = new TraceableImpl();
        return traceable;
    }

    public RequirementstracingPackage getRequirementstracingPackage() {
        return (RequirementstracingPackage)this.getEPackage();
    }

    @Deprecated
    public static RequirementstracingPackage getPackage() {
        return RequirementstracingPackage.eINSTANCE;
    }
}

