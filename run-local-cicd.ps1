# Stop on errors
$ErrorActionPreference = "Stop"

Write-Host "1. Install Node.js dependencies"
npm install

Write-Host "2. Run Jest tests"
npm test

Write-Host "3. Run npm audit for vulnerabilities"
npm audit --audit-level=high

Write-Host "4. Build Docker image"
docker build -t cicd-demo .

Write-Host "5. Scan Docker image with Trivy"
trivy image cicd-demo:latest --format table --ignore-unfixed

Write-Host "Local CI/CD simulation complete!"
Write-Host "You can now run the container with:"
Write-Host "docker run -p 3000:3000 cicd-demo"
