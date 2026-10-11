/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.SimpleDateFormat
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.compare.internal.core.patch;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.eclipse.compare.internal.core.patch.DiffProject;
import org.eclipse.compare.internal.core.patch.FilePatch2;
import org.eclipse.compare.internal.core.patch.Hunk;
import org.eclipse.compare.internal.core.patch.LineReader;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;

public class PatchReader {
    private static final boolean DEBUG = false;
    private static final String DEV_NULL = "/dev/null";
    protected static final String MARKER_TYPE = "org.eclipse.compare.rejectedPatchMarker";
    private DateFormat[] fDateFormats = new DateFormat[]{new SimpleDateFormat("EEE MMM dd kk:mm:ss yyyy"), new SimpleDateFormat("yyyy/MM/dd kk:mm:ss"), new SimpleDateFormat("EEE MMM dd kk:mm:ss yyyy", Locale.US)};
    private boolean fIsWorkspacePatch;
    private DiffProject[] fDiffProjects;
    private FilePatch2[] fDiffs;
    public static final String MULTIPROJECTPATCH_HEADER = "### Eclipse Workspace Patch";
    public static final String MULTIPROJECTPATCH_VERSION = "1.0";
    public static final String MULTIPROJECTPATCH_PROJECT = "#P";

    public PatchReader() {
    }

    public PatchReader(DateFormat[] dateFormats) {
        this();
        this.fDateFormats = dateFormats;
    }

    public void parse(BufferedReader reader) throws IOException {
        ArrayList diffs = new ArrayList();
        HashMap<String, DiffProject> diffProjects = new HashMap<String, DiffProject>(4);
        String line = null;
        boolean reread = false;
        String diffArgs = null;
        String fileName = null;
        String projectName = "";
        this.fIsWorkspacePatch = false;
        LineReader lr = new LineReader(reader);
        if (!"carbon".equals(Platform.getWS())) {
            lr.ignoreSingleCR();
        }
        if ((line = lr.readLine()) == null || !line.startsWith(MULTIPROJECTPATCH_HEADER)) {
            this.parse(lr, line);
            return;
        }
        this.fIsWorkspacePatch = true;
        while (true) {
            DiffProject diffProject;
            if (!reread) {
                line = lr.readLine();
            }
            reread = false;
            if (line == null) break;
            if (line.length() < 4) continue;
            if (line.startsWith(MULTIPROJECTPATCH_PROJECT)) {
                projectName = line.substring(2).trim();
                continue;
            }
            if (line.startsWith("Index: ")) {
                fileName = line.substring(7).trim();
                continue;
            }
            if (line.startsWith("diff")) {
                diffArgs = line.substring(4).trim();
                continue;
            }
            if (!line.startsWith("--- ")) continue;
            if (!diffProjects.containsKey(projectName)) {
                diffProject = new DiffProject(projectName);
                diffProjects.put(projectName, diffProject);
            } else {
                diffProject = (DiffProject)diffProjects.get(projectName);
            }
            line = this.readUnifiedDiff(diffs, lr, line, diffArgs, fileName, diffProject);
            fileName = null;
            diffArgs = null;
            reread = true;
        }
        lr.close();
        this.fDiffProjects = diffProjects.values().toArray(new DiffProject[diffProjects.size()]);
        this.fDiffs = diffs.toArray(new FilePatch2[diffs.size()]);
    }

    protected FilePatch2 createFileDiff(IPath oldPath, long oldDate, IPath newPath, long newDate) {
        return new FilePatch2(oldPath, oldDate, newPath, newDate);
    }

    private String readUnifiedDiff(List diffs, LineReader lr, String line, String diffArgs, String fileName, DiffProject diffProject) throws IOException {
        ArrayList newDiffs = new ArrayList();
        String nextLine = this.readUnifiedDiff(newDiffs, lr, line, diffArgs, fileName);
        Iterator iter = newDiffs.iterator();
        while (iter.hasNext()) {
            FilePatch2 diff = (FilePatch2)iter.next();
            diffProject.add(diff);
            diffs.add(diff);
        }
        return nextLine;
    }

    public void parse(LineReader lr, String line) throws IOException {
        ArrayList diffs = new ArrayList();
        boolean reread = false;
        String diffArgs = null;
        String fileName = null;
        ArrayList<String> headerLines = new ArrayList<String>();
        boolean bl = reread = line != null;
        while (true) {
            if (!reread) {
                line = lr.readLine();
            }
            reread = false;
            if (line == null) break;
            if (line.startsWith("Index: ")) {
                fileName = line.substring(7).trim();
            } else if (line.startsWith("diff")) {
                diffArgs = line.substring(4).trim();
            } else if (line.startsWith("--- ")) {
                line = this.readUnifiedDiff(diffs, lr, line, diffArgs, fileName);
                if (!headerLines.isEmpty()) {
                    this.setHeader((FilePatch2)diffs.get(diffs.size() - 1), headerLines);
                }
                fileName = null;
                diffArgs = null;
                reread = true;
            } else if (line.startsWith("*** ")) {
                line = this.readContextDiff(diffs, lr, line, diffArgs, fileName);
                if (!headerLines.isEmpty()) {
                    this.setHeader((FilePatch2)diffs.get(diffs.size() - 1), headerLines);
                }
                fileName = null;
                diffArgs = null;
                reread = true;
            }
            if (reread) continue;
            headerLines.add(line);
        }
        lr.close();
        this.fDiffs = diffs.toArray(new FilePatch2[diffs.size()]);
    }

    private void setHeader(FilePatch2 diff, List headerLines) {
        String header = LineReader.createString(false, headerLines);
        diff.setHeader(header);
        headerLines.clear();
    }

    protected String readUnifiedDiff(List diffs, LineReader reader, String line, String args, String fileName) throws IOException {
        String[] oldArgs = this.split(line.substring(4));
        line = reader.readLine();
        if (line == null || !line.startsWith("+++ ")) {
            return line;
        }
        String[] newArgs = this.split(line.substring(4));
        FilePatch2 diff = this.createFileDiff(this.extractPath(oldArgs, 0, fileName), this.extractDate(oldArgs, 1), this.extractPath(newArgs, 0, fileName), this.extractDate(newArgs, 1));
        diffs.add(diff);
        int[] oldRange = new int[2];
        int[] newRange = new int[2];
        ArrayList<String> lines = new ArrayList<String>();
        boolean encounteredPlus = false;
        boolean encounteredMinus = false;
        boolean encounteredSpace = false;
        try {
            block11: while (true) {
                if ((line = reader.readLine()) == null) {
                    return null;
                }
                if (reader.lineContentLength(line) == 0) continue;
                char c = line.charAt(0);
                switch (c) {
                    case '@': {
                        if (!line.startsWith("@@ ")) break block11;
                        if (lines.size() > 0) {
                            Hunk.createHunk(diff, oldRange, newRange, lines, encounteredPlus, encounteredMinus, encounteredSpace);
                            lines.clear();
                        }
                        this.extractPair(line, '-', oldRange);
                        this.extractPair(line, '+', newRange);
                        continue block11;
                    }
                    case ' ': {
                        encounteredSpace = true;
                        lines.add(line);
                        continue block11;
                    }
                    case '+': {
                        encounteredPlus = true;
                        lines.add(line);
                        continue block11;
                    }
                    case '-': {
                        encounteredMinus = true;
                        lines.add(line);
                        continue block11;
                    }
                    case '\\': {
                        int end;
                        if (line.indexOf("newline at end") <= 0) break block11;
                        int lastIndex = lines.size();
                        if (lastIndex <= 0) continue block11;
                        line = (String)lines.get(lastIndex - 1);
                        char lc = line.charAt(end = line.length() - 1);
                        if (lc == '\n') {
                            if (--end > 0 && line.charAt(end) == '\r') {
                                --end;
                            }
                        } else if (lc == '\r') {
                            --end;
                        }
                        line = line.substring(0, end + 1);
                        lines.set(lastIndex - 1, line);
                        continue block11;
                    }
                }
                break;
            }
            String string = line;
            return string;
        }
        finally {
            if (lines.size() > 0) {
                Hunk.createHunk(diff, oldRange, newRange, lines, encounteredPlus, encounteredMinus, encounteredSpace);
            }
        }
    }

    private String readContextDiff(List diffs, LineReader reader, String line, String args, String fileName) throws IOException {
        String[] oldArgs = this.split(line.substring(4));
        line = reader.readLine();
        if (line == null || !line.startsWith("--- ")) {
            return line;
        }
        String[] newArgs = this.split(line.substring(4));
        FilePatch2 diff = this.createFileDiff(this.extractPath(oldArgs, 0, fileName), this.extractDate(oldArgs, 1), this.extractPath(newArgs, 0, fileName), this.extractDate(newArgs, 1));
        diffs.add(diff);
        int[] oldRange = new int[2];
        int[] newRange = new int[2];
        ArrayList<String> oldLines = new ArrayList<String>();
        ArrayList newLines = new ArrayList();
        ArrayList<String> lines = oldLines;
        boolean encounteredPlus = false;
        boolean encounteredMinus = false;
        boolean encounteredSpace = false;
        try {
            block11: while (true) {
                if ((line = reader.readLine()) == null) {
                    String string = line;
                    return string;
                }
                int l = line.length();
                if (l == 0) continue;
                if (l <= 1) break;
                switch (line.charAt(0)) {
                    case '*': {
                        if (line.startsWith("***************")) {
                            if (oldLines.size() <= 0 && newLines.size() <= 0) continue block11;
                            Hunk.createHunk(diff, oldRange, newRange, this.unifyLines(oldLines, newLines), encounteredPlus, encounteredMinus, encounteredSpace);
                            oldLines.clear();
                            newLines.clear();
                            continue block11;
                        }
                        if (!line.startsWith("*** ")) break block11;
                        this.extractPair(line, ' ', oldRange);
                        oldRange[1] = oldRange[0] == 0 ? 0 : oldRange[1] - oldRange[0] + 1;
                        lines = oldLines;
                        continue block11;
                    }
                    case ' ': {
                        if (line.charAt(1) != ' ') break block11;
                        lines.add(line);
                        continue block11;
                    }
                    case '+': {
                        if (line.charAt(1) != ' ') break block11;
                        encounteredPlus = true;
                        lines.add(line);
                        continue block11;
                    }
                    case '!': {
                        if (line.charAt(1) != ' ') break block11;
                        encounteredSpace = true;
                        lines.add(line);
                        continue block11;
                    }
                    case '-': {
                        if (line.charAt(1) == ' ') {
                            encounteredMinus = true;
                            lines.add(line);
                            continue block11;
                        }
                        if (!line.startsWith("--- ")) break block11;
                        this.extractPair(line, ' ', newRange);
                        newRange[1] = newRange[0] == 0 ? 0 : newRange[1] - newRange[0] + 1;
                        lines = newLines;
                        continue block11;
                    }
                }
                break;
            }
            String string = line;
            return string;
        }
        finally {
            if (oldLines.size() > 0 || newLines.size() > 0) {
                Hunk.createHunk(diff, oldRange, newRange, this.unifyLines(oldLines, newLines), encounteredPlus, encounteredMinus, encounteredSpace);
            }
        }
    }

    private List unifyLines(List oldLines, List newLines) {
        ArrayList<String> result = new ArrayList<String>();
        String[] ol = oldLines.toArray(new String[oldLines.size()]);
        String[] nl = newLines.toArray(new String[newLines.size()]);
        int oi = 0;
        int ni = 0;
        block0: while (true) {
            char oc = '\u0000';
            String o = null;
            if (oi < ol.length) {
                o = ol[oi];
                oc = o.charAt(0);
            }
            char nc = '\u0000';
            String n = null;
            if (ni < nl.length) {
                n = nl[ni];
                nc = n.charAt(0);
            }
            if (oc == '\u0000' && nc == '\u0000') break;
            if (oc == '-') {
                do {
                    result.add(String.valueOf('-') + o.substring(2));
                } while (++oi < ol.length && (o = ol[oi]).charAt(0) == '-');
                continue;
            }
            if (nc == '+') {
                do {
                    result.add(String.valueOf('+') + n.substring(2));
                } while (++ni < nl.length && (n = nl[ni]).charAt(0) == '+');
                continue;
            }
            if (oc == '!' && nc == '!') {
                do {
                    result.add(String.valueOf('-') + o.substring(2));
                } while (++oi < ol.length && (o = ol[oi]).charAt(0) == '!');
                do {
                    result.add(String.valueOf('+') + n.substring(2));
                } while (++ni < nl.length && (n = nl[ni]).charAt(0) == '!');
                continue;
            }
            if (oc == ' ' && nc == ' ') {
                do {
                    Assert.isTrue((boolean)o.equals(n), (String)"non matching context lines");
                    result.add(String.valueOf(' ') + o.substring(2));
                    if (++oi >= ol.length || ++ni >= nl.length) continue block0;
                    o = ol[oi];
                    n = nl[ni];
                } while (o.charAt(0) == ' ' && n.charAt(0) == ' ');
                continue;
            }
            if (oc == ' ') {
                do {
                    result.add(String.valueOf(' ') + o.substring(2));
                } while (++oi < ol.length && (o = ol[oi]).charAt(0) == ' ');
                continue;
            }
            if (nc == ' ') {
                do {
                    result.add(String.valueOf(' ') + n.substring(2));
                } while (++ni < nl.length && (n = nl[ni]).charAt(0) == ' ');
                continue;
            }
            Assert.isTrue((boolean)false, (String)("unexpected char <" + oc + "> <" + nc + ">"));
        }
        return result;
    }

    private long extractDate(String[] args, int n) {
        if (n < args.length) {
            String line = args[n];
            int i = 0;
            while (i < this.fDateFormats.length) {
                this.fDateFormats[i].setLenient(true);
                try {
                    Date date = this.fDateFormats[i].parse(line);
                    return date.getTime();
                }
                catch (ParseException parseException) {
                    ++i;
                }
            }
        }
        return 0L;
    }

    private IPath extractPath(String[] args, int n, String path2) {
        if (n < args.length) {
            String path = args[n];
            if (DEV_NULL.equals(path)) {
                return null;
            }
            int pos = path.lastIndexOf(58);
            if (pos >= 0) {
                path = path.substring(0, pos);
            }
            if (path2 != null && !path2.equals(path)) {
                path = path2;
            }
            return new Path(path);
        }
        return null;
    }

    private void extractPair(String line, char start, int[] pair) {
        pair[1] = -1;
        pair[0] = -1;
        int startPos = line.indexOf(start);
        if (startPos < 0) {
            return;
        }
        int endPos = (line = line.substring(startPos + 1)).indexOf(32);
        if (endPos < 0) {
            return;
        }
        int comma = (line = line.substring(0, endPos)).indexOf(44);
        if (comma >= 0) {
            pair[0] = Integer.parseInt(line.substring(0, comma));
            pair[1] = Integer.parseInt(line.substring(comma + 1));
        } else {
            pair[0] = Integer.parseInt(line);
            pair[1] = 1;
        }
    }

    private String[] split(String line) {
        ArrayList<String> l = new ArrayList<String>();
        StringTokenizer st = new StringTokenizer(line, "\t");
        while (st.hasMoreElements()) {
            String token = st.nextToken().trim();
            if (token.length() <= 0) continue;
            l.add(token);
        }
        return l.toArray(new String[l.size()]);
    }

    public boolean isWorkspacePatch() {
        return this.fIsWorkspacePatch;
    }

    public DiffProject[] getDiffProjects() {
        return this.fDiffProjects;
    }

    public FilePatch2[] getDiffs() {
        return this.fDiffs;
    }

    public FilePatch2[] getAdjustedDiffs() {
        if (!this.isWorkspacePatch() || this.fDiffs.length == 0) {
            return this.fDiffs;
        }
        ArrayList<FilePatch2> result = new ArrayList<FilePatch2>();
        int i = 0;
        while (i < this.fDiffs.length) {
            FilePatch2 diff = this.fDiffs[i];
            result.add(diff.asRelativeDiff());
            ++i;
        }
        return result.toArray(new FilePatch2[result.size()]);
    }
}

