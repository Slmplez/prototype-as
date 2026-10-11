/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.pde.internal.core.ifeature.IFeature;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;

class FeatureTable {
    private static final IFeatureModel[] NO_MODELS = new IFeatureModel[0];
    private Map fModel2idver = new HashMap();
    private Map fIdver2models = new HashMap();
    private Map fId2idvers = new HashMap();

    public synchronized Idver get(IFeatureModel model) {
        return (Idver)this.fModel2idver.get(model);
    }

    public synchronized IFeatureModel[] get(String id, String version) {
        return this.getImpl(new Idver(id, version));
    }

    public synchronized IFeatureModel[] get(Idver idver) {
        return this.getImpl(idver);
    }

    private IFeatureModel[] getImpl(Idver idver) {
        ArrayList models = (ArrayList)this.fIdver2models.get(idver);
        if (models == null) {
            return NO_MODELS;
        }
        return models.toArray(new IFeatureModel[models.size()]);
    }

    public synchronized IFeatureModel[] get(String id) {
        ArrayList idvers = (ArrayList)this.fId2idvers.get(id);
        if (idvers == null) {
            return NO_MODELS;
        }
        ArrayList allModels = new ArrayList();
        int i = 0;
        while (i < idvers.size()) {
            Idver idver = (Idver)idvers.get(i);
            ArrayList models = (ArrayList)this.fIdver2models.get(idver);
            if (models != null) {
                allModels.addAll(models);
            }
            ++i;
        }
        return allModels.toArray(new IFeatureModel[allModels.size()]);
    }

    public synchronized IFeatureModel[] getAll() {
        return this.getAllImpl();
    }

    private IFeatureModel[] getAllImpl() {
        return this.fModel2idver.keySet().toArray(new IFeatureModel[this.fModel2idver.size()]);
    }

    public synchronized Idver remove(IFeatureModel model) {
        return this.removeImpl(model);
    }

    private Idver removeImpl(IFeatureModel model) {
        Idver idver = (Idver)this.fModel2idver.remove(model);
        if (idver == null) {
            return null;
        }
        ArrayList models = (ArrayList)this.fIdver2models.get(idver);
        int i = 0;
        while (i < models.size()) {
            if (models.get(i) == model) {
                models.remove(i);
                break;
            }
            ++i;
        }
        if (models.size() <= 0) {
            this.fIdver2models.remove(idver);
            ArrayList idvers = (ArrayList)this.fId2idvers.get(idver.getId());
            int i2 = 0;
            while (i2 < idvers.size()) {
                if (idvers.get(i2).equals(idver)) {
                    idvers.remove(i2);
                    break;
                }
                ++i2;
            }
            if (idvers.size() <= 0) {
                this.fId2idvers.remove(idver.getId());
            }
        }
        return idver;
    }

    public synchronized Idver add(IFeatureModel model) {
        this.removeImpl(model);
        IFeature feature = model.getFeature();
        String id = feature.getId();
        String ver = feature.getVersion();
        Idver idver = new Idver(id, ver);
        this.fModel2idver.put(model, idver);
        ArrayList<IFeatureModel> models = (ArrayList<IFeatureModel>)this.fIdver2models.get(idver);
        if (models == null) {
            models = new ArrayList<IFeatureModel>(1);
            this.fIdver2models.put(idver, models);
        }
        models.add(model);
        ArrayList<Idver> idvers = (ArrayList<Idver>)this.fId2idvers.get(id);
        if (idvers == null) {
            idvers = new ArrayList<Idver>(1);
            this.fId2idvers.put(id, idvers);
        }
        idvers.add(idver);
        return idver;
    }

    public synchronized String toString() {
        IFeatureModel[] models = this.getAllImpl();
        StringBuffer buf = new StringBuffer(30 * models.length);
        buf.append("[");
        int i = 0;
        while (i < models.length) {
            if (i > 0) {
                buf.append(",  ");
            }
            buf.append(this.get(models[i]));
            buf.append("@");
            buf.append(models[i].getFeature().getId());
            buf.append("_");
            buf.append(models[i].getFeature().getVersion());
            ++i;
        }
        buf.append("]");
        return buf.toString();
    }

    public class Idver {
        private final String fId;
        private final String fVer;

        public Idver(String id, String version) {
            this.fId = id;
            this.fVer = version;
        }

        public String getId() {
            return this.fId;
        }

        public String getVer() {
            return this.fVer;
        }

        public int hashCode() {
            int code = 0;
            if (this.fId != null) {
                code += this.fId.hashCode();
            }
            if (this.fVer != null) {
                code += this.fVer.hashCode();
            }
            return code;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Idver)) {
                return false;
            }
            return this.equals(((Idver)obj).getId(), ((Idver)obj).getVer());
        }

        public boolean equals(String id, String version) {
            boolean sameVer;
            boolean sameId = this.fId == null && id == null || this.fId != null && this.fId.equals(id);
            boolean bl = sameVer = this.fVer == null && version == null || this.fVer != null && this.fVer.equals(version);
            return sameId && sameVer;
        }

        public String toString() {
            return String.valueOf(this.fId) + "_" + this.fVer;
        }
    }
}

