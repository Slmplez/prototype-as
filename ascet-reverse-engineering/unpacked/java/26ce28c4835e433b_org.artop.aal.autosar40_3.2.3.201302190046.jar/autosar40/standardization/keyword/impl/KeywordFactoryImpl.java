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
package autosar40.standardization.keyword.impl;

import autosar40.standardization.keyword.Keyword;
import autosar40.standardization.keyword.KeywordFactory;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.KeywordSet;
import autosar40.standardization.keyword.impl.KeywordImpl;
import autosar40.standardization.keyword.impl.KeywordSetImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class KeywordFactoryImpl
extends EFactoryImpl
implements KeywordFactory {
    public static KeywordFactory init() {
        try {
            KeywordFactory theKeywordFactory = (KeywordFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/k");
            if (theKeywordFactory != null) {
                return theKeywordFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new KeywordFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createKeyword();
            }
            case 1: {
                return this.createKeywordSet();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Keyword createKeyword() {
        KeywordImpl keyword = new KeywordImpl();
        return keyword;
    }

    public KeywordSet createKeywordSet() {
        KeywordSetImpl keywordSet = new KeywordSetImpl();
        return keywordSet;
    }

    public KeywordPackage getKeywordPackage() {
        return (KeywordPackage)this.getEPackage();
    }

    @Deprecated
    public static KeywordPackage getPackage() {
        return KeywordPackage.eINSTANCE;
    }
}

