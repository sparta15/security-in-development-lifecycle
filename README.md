# security-in-development-lifecycle
The pourpuose of this repository is to provide examples of how to implement security in the development lifecycle.

## Initial state
The main branch has several vulnerabilities in the Dockerfile and in the code. This is the base state we want to improve.

## Use cases

### Improving security in the Docker images
1. Update the base image to a more secure one
The image on the branch `feat/secure_image` contains a more secure base image.

2. Use Distroless image
The image on the branch `feat/distroless` contains a distroless image, to avoid usage of root user and vulnerable packages. We use multi-stage image too.

3. Add a scanner to the CI/CD pipeline
The branch `feat/add_trivy_to_gh_action` adds a the scanner `Trivy` to the CI/CD pipeline. It is configured to fail if the image has vulnerabilities with severity high or critical.

### Improving security in the code
1. Add a configuration file for the pre-commit
The branch `feat/add_precommit` adds a configuration file for the pre-commit. It is configured to run the `ripsecrets`. Also, it contains some extra hooks to lint the code.
