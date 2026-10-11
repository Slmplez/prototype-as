/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dv.xs;

import org.apache.xerces.impl.dv.SchemaDVFactory;
import org.apache.xerces.impl.dv.XSFacets;
import org.apache.xerces.impl.dv.XSSimpleType;
import org.apache.xerces.impl.dv.xs.XSSimpleTypeDecl;
import org.apache.xerces.impl.xs.XSDeclarationPool;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.xs.XSObjectList;

public class SchemaDVFactoryImpl
extends SchemaDVFactory {
    static final String URI_SCHEMAFORSCHEMA = "http://www.w3.org/2001/XMLSchema";
    static final SymbolHash fBuiltInTypes = new SymbolHash();
    protected XSDeclarationPool fDeclPool = null;

    public XSSimpleType getBuiltInType(String string) {
        return (XSSimpleType)fBuiltInTypes.get(string);
    }

    public SymbolHash getBuiltInTypes() {
        return fBuiltInTypes.makeClone();
    }

    public XSSimpleType createTypeRestriction(String string, String string2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        if (this.fDeclPool != null) {
            XSSimpleTypeDecl xSSimpleTypeDecl = this.fDeclPool.getSimpleTypeDecl();
            return xSSimpleTypeDecl.setRestrictionValues((XSSimpleTypeDecl)xSSimpleType, string, string2, s, xSObjectList);
        }
        return new XSSimpleTypeDecl((XSSimpleTypeDecl)xSSimpleType, string, string2, s, false, xSObjectList);
    }

    public XSSimpleType createTypeList(String string, String string2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        if (this.fDeclPool != null) {
            XSSimpleTypeDecl xSSimpleTypeDecl = this.fDeclPool.getSimpleTypeDecl();
            return xSSimpleTypeDecl.setListValues(string, string2, s, (XSSimpleTypeDecl)xSSimpleType, xSObjectList);
        }
        return new XSSimpleTypeDecl(string, string2, s, (XSSimpleTypeDecl)xSSimpleType, false, xSObjectList);
    }

    public XSSimpleType createTypeUnion(String string, String string2, short s, XSSimpleType[] xSSimpleTypeArray, XSObjectList xSObjectList) {
        int n = xSSimpleTypeArray.length;
        XSSimpleTypeDecl[] xSSimpleTypeDeclArray = new XSSimpleTypeDecl[n];
        System.arraycopy(xSSimpleTypeArray, 0, xSSimpleTypeDeclArray, 0, n);
        if (this.fDeclPool != null) {
            XSSimpleTypeDecl xSSimpleTypeDecl = this.fDeclPool.getSimpleTypeDecl();
            return xSSimpleTypeDecl.setUnionValues(string, string2, s, xSSimpleTypeDeclArray, xSObjectList);
        }
        return new XSSimpleTypeDecl(string, string2, s, xSSimpleTypeDeclArray, xSObjectList);
    }

    static void createBuiltInTypes() {
        XSFacets xSFacets = new XSFacets();
        XSSimpleTypeDecl xSSimpleTypeDecl = XSSimpleTypeDecl.fAnySimpleType;
        XSSimpleTypeDecl xSSimpleTypeDecl2 = XSSimpleTypeDecl.fAnyAtomicType;
        XSSimpleTypeDecl xSSimpleTypeDecl3 = null;
        xSSimpleTypeDecl3 = xSSimpleTypeDecl;
        fBuiltInTypes.put("anySimpleType", xSSimpleTypeDecl);
        XSSimpleTypeDecl xSSimpleTypeDecl4 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "string", 1, 0, false, false, false, true, 2);
        fBuiltInTypes.put("string", xSSimpleTypeDecl4);
        fBuiltInTypes.put("boolean", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "boolean", 2, 0, false, true, false, true, 3));
        XSSimpleTypeDecl xSSimpleTypeDecl5 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "decimal", 3, 2, false, false, true, true, 4);
        fBuiltInTypes.put("decimal", xSSimpleTypeDecl5);
        fBuiltInTypes.put("anyURI", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "anyURI", 17, 0, false, false, false, true, 18));
        fBuiltInTypes.put("base64Binary", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "base64Binary", 16, 0, false, false, false, true, 17));
        XSSimpleTypeDecl xSSimpleTypeDecl6 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "duration", 6, 1, false, false, false, true, 7);
        fBuiltInTypes.put("duration", xSSimpleTypeDecl6);
        fBuiltInTypes.put("dateTime", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "dateTime", 7, 1, false, false, false, true, 8));
        fBuiltInTypes.put("time", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "time", 8, 1, false, false, false, true, 9));
        fBuiltInTypes.put("date", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "date", 9, 1, false, false, false, true, 10));
        fBuiltInTypes.put("gYearMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "gYearMonth", 10, 1, false, false, false, true, 11));
        fBuiltInTypes.put("gYear", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "gYear", 11, 1, false, false, false, true, 12));
        fBuiltInTypes.put("gMonthDay", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "gMonthDay", 12, 1, false, false, false, true, 13));
        fBuiltInTypes.put("gDay", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "gDay", 13, 1, false, false, false, true, 14));
        fBuiltInTypes.put("gMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "gMonth", 14, 1, false, false, false, true, 15));
        XSSimpleTypeDecl xSSimpleTypeDecl7 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "integer", 24, 2, false, false, true, true, 30);
        fBuiltInTypes.put("integer", xSSimpleTypeDecl7);
        xSFacets.maxInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl8 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "nonPositiveInteger", URI_SCHEMAFORSCHEMA, 0, false, null, 31);
        xSSimpleTypeDecl8.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("nonPositiveInteger", xSSimpleTypeDecl8);
        xSFacets.maxInclusive = "-1";
        XSSimpleTypeDecl xSSimpleTypeDecl9 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "negativeInteger", URI_SCHEMAFORSCHEMA, 0, false, null, 32);
        xSSimpleTypeDecl9.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("negativeInteger", xSSimpleTypeDecl9);
        xSFacets.maxInclusive = "9223372036854775807";
        xSFacets.minInclusive = "-9223372036854775808";
        XSSimpleTypeDecl xSSimpleTypeDecl10 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "long", URI_SCHEMAFORSCHEMA, 0, false, null, 33);
        xSSimpleTypeDecl10.applyFacets1(xSFacets, (short)288, (short)0);
        fBuiltInTypes.put("long", xSSimpleTypeDecl10);
        xSFacets.maxInclusive = "2147483647";
        xSFacets.minInclusive = "-2147483648";
        XSSimpleTypeDecl xSSimpleTypeDecl11 = new XSSimpleTypeDecl(xSSimpleTypeDecl10, "int", URI_SCHEMAFORSCHEMA, 0, false, null, 34);
        xSSimpleTypeDecl11.applyFacets1(xSFacets, (short)288, (short)0);
        fBuiltInTypes.put("int", xSSimpleTypeDecl11);
        xSFacets.maxInclusive = "32767";
        xSFacets.minInclusive = "-32768";
        XSSimpleTypeDecl xSSimpleTypeDecl12 = new XSSimpleTypeDecl(xSSimpleTypeDecl11, "short", URI_SCHEMAFORSCHEMA, 0, false, null, 35);
        xSSimpleTypeDecl12.applyFacets1(xSFacets, (short)288, (short)0);
        fBuiltInTypes.put("short", xSSimpleTypeDecl12);
        xSFacets.maxInclusive = "127";
        xSFacets.minInclusive = "-128";
        XSSimpleTypeDecl xSSimpleTypeDecl13 = new XSSimpleTypeDecl(xSSimpleTypeDecl12, "byte", URI_SCHEMAFORSCHEMA, 0, false, null, 36);
        xSSimpleTypeDecl13.applyFacets1(xSFacets, (short)288, (short)0);
        fBuiltInTypes.put("byte", xSSimpleTypeDecl13);
        xSFacets.minInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl14 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "nonNegativeInteger", URI_SCHEMAFORSCHEMA, 0, false, null, 37);
        xSSimpleTypeDecl14.applyFacets1(xSFacets, (short)256, (short)0);
        fBuiltInTypes.put("nonNegativeInteger", xSSimpleTypeDecl14);
        xSFacets.maxInclusive = "18446744073709551615";
        XSSimpleTypeDecl xSSimpleTypeDecl15 = new XSSimpleTypeDecl(xSSimpleTypeDecl14, "unsignedLong", URI_SCHEMAFORSCHEMA, 0, false, null, 38);
        xSSimpleTypeDecl15.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("unsignedLong", xSSimpleTypeDecl15);
        xSFacets.maxInclusive = "4294967295";
        XSSimpleTypeDecl xSSimpleTypeDecl16 = new XSSimpleTypeDecl(xSSimpleTypeDecl15, "unsignedInt", URI_SCHEMAFORSCHEMA, 0, false, null, 39);
        xSSimpleTypeDecl16.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("unsignedInt", xSSimpleTypeDecl16);
        xSFacets.maxInclusive = "65535";
        XSSimpleTypeDecl xSSimpleTypeDecl17 = new XSSimpleTypeDecl(xSSimpleTypeDecl16, "unsignedShort", URI_SCHEMAFORSCHEMA, 0, false, null, 40);
        xSSimpleTypeDecl17.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("unsignedShort", xSSimpleTypeDecl17);
        xSFacets.maxInclusive = "255";
        XSSimpleTypeDecl xSSimpleTypeDecl18 = new XSSimpleTypeDecl(xSSimpleTypeDecl17, "unsignedByte", URI_SCHEMAFORSCHEMA, 0, false, null, 41);
        xSSimpleTypeDecl18.applyFacets1(xSFacets, (short)32, (short)0);
        fBuiltInTypes.put("unsignedByte", xSSimpleTypeDecl18);
        xSFacets.minInclusive = "1";
        XSSimpleTypeDecl xSSimpleTypeDecl19 = new XSSimpleTypeDecl(xSSimpleTypeDecl14, "positiveInteger", URI_SCHEMAFORSCHEMA, 0, false, null, 42);
        xSSimpleTypeDecl19.applyFacets1(xSFacets, (short)256, (short)0);
        fBuiltInTypes.put("positiveInteger", xSSimpleTypeDecl19);
        fBuiltInTypes.put("float", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "float", 4, 1, true, true, true, true, 5));
        fBuiltInTypes.put("double", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "double", 5, 1, true, true, true, true, 6));
        fBuiltInTypes.put("hexBinary", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "hexBinary", 15, 0, false, false, false, true, 16));
        fBuiltInTypes.put("NOTATION", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "NOTATION", 20, 0, false, false, false, true, 20));
        xSFacets.whiteSpace = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl20 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "normalizedString", URI_SCHEMAFORSCHEMA, 0, false, null, 21);
        xSSimpleTypeDecl20.applyFacets1(xSFacets, (short)16, (short)0);
        fBuiltInTypes.put("normalizedString", xSSimpleTypeDecl20);
        xSFacets.whiteSpace = (short)2;
        XSSimpleTypeDecl xSSimpleTypeDecl21 = new XSSimpleTypeDecl(xSSimpleTypeDecl20, "token", URI_SCHEMAFORSCHEMA, 0, false, null, 22);
        xSSimpleTypeDecl21.applyFacets1(xSFacets, (short)16, (short)0);
        fBuiltInTypes.put("token", xSSimpleTypeDecl21);
        xSFacets.whiteSpace = (short)2;
        xSFacets.pattern = "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*";
        XSSimpleTypeDecl xSSimpleTypeDecl22 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "language", URI_SCHEMAFORSCHEMA, 0, false, null, 23);
        xSSimpleTypeDecl22.applyFacets1(xSFacets, (short)24, (short)0);
        fBuiltInTypes.put("language", xSSimpleTypeDecl22);
        xSFacets.whiteSpace = (short)2;
        XSSimpleTypeDecl xSSimpleTypeDecl23 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "Name", URI_SCHEMAFORSCHEMA, 0, false, null, 25);
        xSSimpleTypeDecl23.applyFacets1(xSFacets, (short)16, (short)0, (short)2);
        fBuiltInTypes.put("Name", xSSimpleTypeDecl23);
        xSFacets.whiteSpace = (short)2;
        XSSimpleTypeDecl xSSimpleTypeDecl24 = new XSSimpleTypeDecl(xSSimpleTypeDecl23, "NCName", URI_SCHEMAFORSCHEMA, 0, false, null, 26);
        xSSimpleTypeDecl24.applyFacets1(xSFacets, (short)16, (short)0, (short)3);
        fBuiltInTypes.put("NCName", xSSimpleTypeDecl24);
        fBuiltInTypes.put("QName", new XSSimpleTypeDecl(xSSimpleTypeDecl3, "QName", 18, 0, false, false, false, true, 19));
        fBuiltInTypes.put("ID", new XSSimpleTypeDecl(xSSimpleTypeDecl24, "ID", 21, 0, false, false, false, true, 27));
        XSSimpleTypeDecl xSSimpleTypeDecl25 = new XSSimpleTypeDecl(xSSimpleTypeDecl24, "IDREF", 22, 0, false, false, false, true, 28);
        fBuiltInTypes.put("IDREF", xSSimpleTypeDecl25);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl26 = new XSSimpleTypeDecl(null, URI_SCHEMAFORSCHEMA, 0, xSSimpleTypeDecl25, true, null);
        XSSimpleTypeDecl xSSimpleTypeDecl27 = new XSSimpleTypeDecl(xSSimpleTypeDecl26, "IDREFS", URI_SCHEMAFORSCHEMA, 0, false, null);
        xSSimpleTypeDecl27.applyFacets1(xSFacets, (short)2, (short)0);
        fBuiltInTypes.put("IDREFS", xSSimpleTypeDecl27);
        XSSimpleTypeDecl xSSimpleTypeDecl28 = new XSSimpleTypeDecl(xSSimpleTypeDecl24, "ENTITY", 23, 0, false, false, false, true, 29);
        fBuiltInTypes.put("ENTITY", xSSimpleTypeDecl28);
        xSFacets.minLength = 1;
        xSSimpleTypeDecl26 = new XSSimpleTypeDecl(null, URI_SCHEMAFORSCHEMA, 0, xSSimpleTypeDecl28, true, null);
        XSSimpleTypeDecl xSSimpleTypeDecl29 = new XSSimpleTypeDecl(xSSimpleTypeDecl26, "ENTITIES", URI_SCHEMAFORSCHEMA, 0, false, null);
        xSSimpleTypeDecl29.applyFacets1(xSFacets, (short)2, (short)0);
        fBuiltInTypes.put("ENTITIES", xSSimpleTypeDecl29);
        xSFacets.whiteSpace = (short)2;
        XSSimpleTypeDecl xSSimpleTypeDecl30 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "NMTOKEN", URI_SCHEMAFORSCHEMA, 0, false, null, 24);
        xSSimpleTypeDecl30.applyFacets1(xSFacets, (short)16, (short)0, (short)1);
        fBuiltInTypes.put("NMTOKEN", xSSimpleTypeDecl30);
        xSFacets.minLength = 1;
        xSSimpleTypeDecl26 = new XSSimpleTypeDecl(null, URI_SCHEMAFORSCHEMA, 0, xSSimpleTypeDecl30, true, null);
        XSSimpleTypeDecl xSSimpleTypeDecl31 = new XSSimpleTypeDecl(xSSimpleTypeDecl26, "NMTOKENS", URI_SCHEMAFORSCHEMA, 0, false, null);
        xSSimpleTypeDecl31.applyFacets1(xSFacets, (short)2, (short)0);
        fBuiltInTypes.put("NMTOKENS", xSSimpleTypeDecl31);
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }

    static {
        SchemaDVFactoryImpl.createBuiltInTypes();
    }
}

