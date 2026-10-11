/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginationandviewFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface PaginationandviewFactory
extends EFactory {
    public static final PaginationandviewFactory eINSTANCE = PaginationandviewFactoryImpl.init();

    public PaginationandviewPackage getPaginationandviewPackage();
}

