/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.impl.PortAnnotationImpl;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ServiceNeedsImpl
extends PortAnnotationImpl
implements ServiceNeeds {
    protected ServiceNeedsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.SERVICE_NEEDS;
    }

    @Override
    public boolean _ThecorrespondingportinterfacemusthavesetIsServicetrue(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }
}

