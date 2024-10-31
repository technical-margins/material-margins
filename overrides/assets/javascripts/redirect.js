// Determine the language based on the URL path. If '/en/' is in the URL, use the English version; otherwise, default to the base language.
const languageSuffix = window.location.pathname.includes('/en/') ? '/en' : '';

// Set the product and path prefix based on placeholders, which are replaced at build time by Docker.
let product = "#PRODUCT_NAME#";  // Product name (e.g., 'iroad', 'xroad') to differentiate documentation sets.
if (product.includes('#'))
  product = localStorage.getItem('product');
let pathPrefix = "/#PATH_PREFIX#";  // Prefix for the path (e.g., 'help' for nested clusters).
// If no prefix is provided, default to the root directory.
if (pathPrefix === "/" || pathPrefix.includes('#'))
  pathPrefix = "";

// Extract the 'keyid' parameter from the URL query string. This parameter maps to specific help topics or sections.
const urlParams = new URLSearchParams(window.location.search);
const keyid = urlParams.get('keyid');

// If no keyid is provided, log an error and optionally redirect or handle this case.
if (!keyid) {
  console.error('No keyid provided in the URL. Redirection cannot proceed.');
  // Optional: We could add a fallback action here, such as redirecting to a default page or showing an error message.
} else {
  // Function to find the appropriate target page by checking a JSON map of keyid-to-URL mappings.
  async function findAndRedirect() {
    // Path to the JSON file that maps 'keyid' values to their corresponding help page URLs.
    const jsonFilePath = `${pathPrefix}/assets/javascripts/context_id_map.json`;

    try {
      // Fetch the mapping file containing keyid-to-URL associations.
      const response = await fetch(jsonFilePath);

      // If the fetch is successful and the file is found, parse the JSON data.
      if (response.ok) {
        const data = await response.json();

        // Look for the URL corresponding to the provided keyid.
        const targetURL = data[keyid];
        console.log(`Redirecting to: ${targetURL}`);

        if (targetURL) {
          // Perform the redirection to the target URL. Include language and product in the final path.
          window.location.href = `${pathPrefix}${languageSuffix}/${product}/${targetURL}`;
          return;  // Exit the function after successful redirection.
        }
      }
    } catch (error) {
      // Log an error if the fetch fails (e.g., network error or missing file).
      console.error(`Error fetching ${jsonFilePath}:`, error);
    }

    // If no valid target URL is found, log an error message. This could happen if the keyid is not recognized.
    console.error('Invalid or unrecognized keyid. No matching URL found.');
  }

  // Initiate the process to find and redirect to the appropriate help page based on the keyid.
  findAndRedirect();
}
