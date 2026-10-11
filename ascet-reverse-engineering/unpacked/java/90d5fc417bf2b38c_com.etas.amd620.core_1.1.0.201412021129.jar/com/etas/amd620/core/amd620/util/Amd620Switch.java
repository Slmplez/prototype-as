/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.Switch
 */
package com.etas.amd620.core.amd620.util;

import com.etas.amd620.core.amd620.Amd620Package;
import com.etas.amd620.core.amd620.AscetClass;
import com.etas.amd620.core.amd620.AscetComponent;
import com.etas.amd620.core.amd620.AscetInterface;
import com.etas.amd620.core.amd620.AscetProject;
import com.etas.amd620.core.amd620.DefaultConfiguration;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.Switch;

public class Amd620Switch<T>
extends Switch<T> {
    protected static Amd620Package modelPackage;

    public Amd620Switch() {
        if (modelPackage == null) {
            modelPackage = Amd620Package.eINSTANCE;
        }
    }

    protected boolean isSwitchFor(EPackage ePackage) {
        return ePackage == modelPackage;
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                AscetComponent ascetComponent = (AscetComponent)theEObject;
                T result = this.caseAscetComponent(ascetComponent);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AscetClass ascetClass = (AscetClass)theEObject;
                T result = this.caseAscetClass(ascetClass);
                if (result == null) {
                    result = this.caseAscetComponent(ascetClass);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                AscetProject ascetProject = (AscetProject)theEObject;
                T result = this.caseAscetProject(ascetProject);
                if (result == null) {
                    result = this.caseAscetClass(ascetProject);
                }
                if (result == null) {
                    result = this.caseAscetComponent(ascetProject);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                DefaultConfiguration defaultConfiguration = (DefaultConfiguration)theEObject;
                T result = this.caseDefaultConfiguration(defaultConfiguration);
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                AscetInterface ascetInterface = (AscetInterface)theEObject;
                T result = this.caseAscetInterface(ascetInterface);
                if (result == null) {
                    result = this.caseAscetComponent(ascetInterface);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAscetComponent(AscetComponent object) {
        return null;
    }

    public T caseAscetClass(AscetClass object) {
        return null;
    }

    public T caseAscetProject(AscetProject object) {
        return null;
    }

    public T caseDefaultConfiguration(DefaultConfiguration object) {
        return null;
    }

    public T caseAscetInterface(AscetInterface object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

