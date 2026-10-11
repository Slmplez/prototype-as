/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataWriter
 *  org.eclipse.equinox.internal.p2.persistence.XMLWriter$ProcessingInstruction
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 *  org.eclipse.equinox.p2.query.QueryUtil
 */
package org.eclipse.equinox.internal.p2.engine;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.equinox.internal.p2.engine.ProfileXMLConstants;
import org.eclipse.equinox.internal.p2.metadata.repository.io.MetadataWriter;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.QueryUtil;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProfileWriter
extends MetadataWriter
implements ProfileXMLConstants {
    public ProfileWriter(OutputStream output, XMLWriter.ProcessingInstruction[] processingInstructions) throws IOException {
        super(output, processingInstructions);
    }

    public void writeProfile(IProfile profile) {
        this.start("profile");
        this.attribute("id", profile.getProfileId());
        this.attribute("timestamp", Long.toString(profile.getTimestamp()));
        this.writeProperties(profile.getProperties());
        ArrayList ius = new ArrayList(profile.query(QueryUtil.createIUAnyQuery(), null).toUnmodifiableSet());
        Collections.sort(ius, new Comparator<IInstallableUnit>(){

            @Override
            public int compare(IInstallableUnit iu1, IInstallableUnit iu2) {
                int IdCompare = iu1.getId().compareTo(iu2.getId());
                if (IdCompare != 0) {
                    return IdCompare;
                }
                return iu1.getVersion().compareTo((Object)iu2.getVersion());
            }
        });
        this.writeInstallableUnits(ius.iterator(), ius.size());
        this.writeInstallableUnitsProperties(ius.iterator(), ius.size(), profile);
        this.end("profile");
        this.flush();
    }

    private void writeInstallableUnitsProperties(Iterator<IInstallableUnit> it, int size, IProfile profile) {
        if (size == 0) {
            return;
        }
        this.start("iusProperties");
        this.attribute("size", size);
        while (it.hasNext()) {
            IInstallableUnit iu = it.next();
            Map<String, String> properties = profile.getInstallableUnitProperties(iu);
            if (properties.isEmpty()) continue;
            this.start("iuProperties");
            this.attribute("id", iu.getId());
            this.attribute("version", iu.getVersion().toString());
            this.writeProperties(properties);
            this.end("iuProperties");
        }
        this.end("iusProperties");
    }
}

