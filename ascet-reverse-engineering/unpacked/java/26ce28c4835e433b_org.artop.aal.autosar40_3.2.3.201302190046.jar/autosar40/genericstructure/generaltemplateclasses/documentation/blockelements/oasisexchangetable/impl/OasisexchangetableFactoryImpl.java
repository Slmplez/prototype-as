/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FloatEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FrameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetableFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OrientEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.PgwideEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.ColspecImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.EntryImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.RowImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.TableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.TbodyImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.impl.TgroupImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class OasisexchangetableFactoryImpl
extends EFactoryImpl
implements OasisexchangetableFactory {
    public static OasisexchangetableFactory init() {
        try {
            OasisexchangetableFactory theOasisexchangetableFactory = (OasisexchangetableFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/oet");
            if (theOasisexchangetableFactory != null) {
                return theOasisexchangetableFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new OasisexchangetableFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createColspec();
            }
            case 1: {
                return this.createEntry();
            }
            case 2: {
                return this.createRow();
            }
            case 3: {
                return this.createTbody();
            }
            case 4: {
                return this.createTgroup();
            }
            case 5: {
                return this.createTable();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.createAlignEnumFromString(eDataType, initialValue);
            }
            case 7: {
                return this.createValignEnumFromString(eDataType, initialValue);
            }
            case 8: {
                return this.createFloatEnumFromString(eDataType, initialValue);
            }
            case 9: {
                return this.createPgwideEnumFromString(eDataType, initialValue);
            }
            case 10: {
                return this.createFrameEnumFromString(eDataType, initialValue);
            }
            case 11: {
                return this.createOrientEnumFromString(eDataType, initialValue);
            }
            case 12: {
                return this.createTableSeparatorStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 6: {
                return this.convertAlignEnumToString(eDataType, instanceValue);
            }
            case 7: {
                return this.convertValignEnumToString(eDataType, instanceValue);
            }
            case 8: {
                return this.convertFloatEnumToString(eDataType, instanceValue);
            }
            case 9: {
                return this.convertPgwideEnumToString(eDataType, instanceValue);
            }
            case 10: {
                return this.convertFrameEnumToString(eDataType, instanceValue);
            }
            case 11: {
                return this.convertOrientEnumToString(eDataType, instanceValue);
            }
            case 12: {
                return this.convertTableSeparatorStringToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public Colspec createColspec() {
        ColspecImpl colspec = new ColspecImpl();
        return colspec;
    }

    public Entry createEntry() {
        EntryImpl entry = new EntryImpl();
        return entry;
    }

    public Row createRow() {
        RowImpl row = new RowImpl();
        return row;
    }

    public Tbody createTbody() {
        TbodyImpl tbody = new TbodyImpl();
        return tbody;
    }

    public Tgroup createTgroup() {
        TgroupImpl tgroup = new TgroupImpl();
        return tgroup;
    }

    public Table createTable() {
        TableImpl table = new TableImpl();
        return table;
    }

    public AlignEnum createAlignEnumFromString(EDataType eDataType, String initialValue) {
        AlignEnum result = AlignEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertAlignEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ValignEnum createValignEnumFromString(EDataType eDataType, String initialValue) {
        ValignEnum result = ValignEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertValignEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FloatEnum createFloatEnumFromString(EDataType eDataType, String initialValue) {
        FloatEnum result = FloatEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFloatEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public PgwideEnum createPgwideEnumFromString(EDataType eDataType, String initialValue) {
        PgwideEnum result = PgwideEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertPgwideEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public FrameEnum createFrameEnumFromString(EDataType eDataType, String initialValue) {
        FrameEnum result = FrameEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertFrameEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public OrientEnum createOrientEnumFromString(EDataType eDataType, String initialValue) {
        OrientEnum result = OrientEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertOrientEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public String createTableSeparatorStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertTableSeparatorStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public OasisexchangetablePackage getOasisexchangetablePackage() {
        return (OasisexchangetablePackage)this.getEPackage();
    }

    @Deprecated
    public static OasisexchangetablePackage getPackage() {
        return OasisexchangetablePackage.eINSTANCE;
    }
}

