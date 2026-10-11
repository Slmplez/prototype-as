/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.OasisexchangetableFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface OasisexchangetableFactory
extends EFactory {
    public static final OasisexchangetableFactory eINSTANCE = OasisexchangetableFactoryImpl.init();

    public Colspec createColspec();

    public Entry createEntry();

    public Row createRow();

    public Tbody createTbody();

    public Tgroup createTgroup();

    public Table createTable();

    public OasisexchangetablePackage getOasisexchangetablePackage();
}

