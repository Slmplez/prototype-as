/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.autosartoplevelstructure.AUTOSAR
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataType
 *  autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage
 *  autosar40.swcomponent.datatype.datatypes.ApplicationDataType
 *  autosar40.swcomponent.datatype.datatypes.DataTypeMap
 *  autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet
 *  com.google.common.collect.Iterators
 *  com.google.common.collect.UnmodifiableIterator
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 */
package com.etas.ascet.importer.a2a.type;

import autosar40.autosartoplevelstructure.AUTOSAR;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARPackage;
import autosar40.swcomponent.datatype.datatypes.ApplicationDataType;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import autosar40.swcomponent.datatype.datatypes.DataTypeMappingSet;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import com.google.common.collect.Iterators;
import com.google.common.collect.UnmodifiableIterator;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;

public class DataTypeMappingUtil {
    private HashMap<String, HashMap<String, ImplementationDataType>> allMapsHash = new HashMap();

    public DataTypeMappingUtil(ResourceSet resSet) {
        for (Resource res : resSet.getResources()) {
            AUTOSAR autosar = (AUTOSAR)res.getContents().get(0);
            for (ARPackage p : autosar.getArPackages()) {
                try {
                    UnmodifiableIterator set = Iterators.filter((Iterator)p.eAllContents(), DataTypeMappingSet.class);
                    if (!set.hasNext()) continue;
                    DataTypeMappingSet mappingSet = (DataTypeMappingSet)set.next();
                    HashMap<String, ImplementationDataType> typeHash = this.createMapFromMappingSet(mappingSet);
                    this.allMapsHash.put(mappingSet.getShortName(), typeHash);
                }
                catch (NoSuchElementException noSuchElementException) {
                }
                catch (UnsupportedOperationException unsupportedOperationException) {}
            }
        }
    }

    public ImplementationDataType getImplType(String mappingName, ApplicationDataType applicationType) {
        HashMap<String, ImplementationDataType> hashMap = this.allMapsHash.get(mappingName);
        if (hashMap != null) {
            return hashMap.get(AutosarScoping.getARPath((GIdentifiable)applicationType));
        }
        return null;
    }

    private HashMap<String, ImplementationDataType> createMapFromMappingSet(DataTypeMappingSet mappingSet) {
        HashMap<String, ImplementationDataType> typeHash = new HashMap<String, ImplementationDataType>();
        for (DataTypeMap mapping : mappingSet.getDataTypeMaps()) {
            ApplicationDataType dataType = mapping.getApplicationDataType();
            if (dataType == null) continue;
            typeHash.put(AutosarScoping.getARPath((GIdentifiable)dataType), mapping.getImplementationDataType());
        }
        return typeHash;
    }
}

