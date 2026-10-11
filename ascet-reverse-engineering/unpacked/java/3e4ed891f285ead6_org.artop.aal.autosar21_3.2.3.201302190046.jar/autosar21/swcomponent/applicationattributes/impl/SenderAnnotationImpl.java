/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.impl.SenderReceiverAnnotationImpl;
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

