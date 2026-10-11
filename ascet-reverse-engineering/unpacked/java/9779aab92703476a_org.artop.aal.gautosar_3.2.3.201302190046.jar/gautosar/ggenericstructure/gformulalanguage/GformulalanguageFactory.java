/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.gformulalanguage;

import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.gformulalanguage.impl.GformulalanguageFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GformulalanguageFactory
extends EFactory {
    public static final GformulalanguageFactory eINSTANCE = GformulalanguageFactoryImpl.init();

    public GformulalanguagePackage getGformulalanguagePackage();
}

