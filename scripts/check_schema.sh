#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p .schema-build/Hodge
export LEAN_PATH="$PWD/.schema-build"
# Deliberately selected interface modules, not a claim that the whole legacy repository builds.
for module in AnalyticInterface HardLefschetz ClayBlueprint RealProjectiveFourfold SchemeSpec IntegratedSpec IntegratedGeometry FourfoldMissType ProjectiveFourfoldSpace SchemaRegression; do
  lean -o ".schema-build/Hodge/$module.olean" "Hodge/$module.lean"
done
