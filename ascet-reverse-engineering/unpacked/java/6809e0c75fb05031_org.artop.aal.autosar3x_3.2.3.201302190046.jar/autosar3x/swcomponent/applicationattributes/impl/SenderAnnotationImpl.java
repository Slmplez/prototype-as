/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.swcomponent.applicationattributes.impl;

import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.SenderAnnotation;
import autosar3x.swcomponent.applicationattributes.impl.SenderReceiverAnnotationImpl;
import org.eclipse.emf.ecore.EClass;

public class SenderAnnotationImpl
extends SenderReceiverAnnotationImpl
implements SenderAnnotation {
    protected SenderAnnotationImpl() {
    }

    protected EClass eStaticClass() {
        return ApplicationattributesPackage.Literals.SENDER_ANNOTATION;
    }
}

