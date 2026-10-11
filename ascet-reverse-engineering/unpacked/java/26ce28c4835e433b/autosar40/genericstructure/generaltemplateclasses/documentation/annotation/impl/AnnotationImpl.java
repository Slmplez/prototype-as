/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.annotation.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.impl.GeneralAnnotationImpl;
import org.eclipse.emf.ecore.EClass;

public class AnnotationImpl
extends GeneralAnnotationImpl
implements Annotation {
    protected AnnotationImpl() {
    }

    protected EClass eStaticClass() {
        return AnnotationPackage.Literals.ANNOTATION;
    }
}

