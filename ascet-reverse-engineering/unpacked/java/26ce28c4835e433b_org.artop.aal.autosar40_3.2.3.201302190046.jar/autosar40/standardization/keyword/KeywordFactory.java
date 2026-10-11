/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.standardization.keyword;

import autosar40.standardization.keyword.Keyword;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.standardization.keyword.KeywordSet;
import autosar40.standardization.keyword.impl.KeywordFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface KeywordFactory
extends EFactory {
    public static final KeywordFactory eINSTANCE = KeywordFactoryImpl.init();

    public Keyword createKeyword();

    public KeywordSet createKeywordSet();

    public KeywordPackage getKeywordPackage();
}

